import 'package:flutter/material.dart';

/// Compact version of [Header]
class CompactHeader extends StatelessWidget implements PreferredSizeWidget {
  /// Optional tile of header
  final String? title;

  /// Show optional divider on bottom
  final bool showDivider;

  /// On tap back callback, if null back button is hidden
  final GestureTapCallback? onBack;

  ///Represents some extra functionality, with the exception of the back
  final Widget? onAction;

  /// Default constructor
  const CompactHeader({
    Key? key,
    this.title,
    this.onBack,
    this.onAction,
    this.showDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Material(
        color: Color.fromARGB(255, 3, 57, 100),
        child: SizedBox(
          height: 72,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: onBack != null
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  onPressed: onBack,
                                  iconSize: 24,
                                  splashRadius: 24,
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                      Expanded(
                        flex: 2,
                        child: title != null
                            ? Center(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    title!,
                                    style: theme.textTheme.headline5!
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                      Expanded(
                        child: onAction != null
                            ? Align(
                                alignment: Alignment.centerRight,
                                child: IntrinsicWidth(child: onAction),
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
              ),
              if (showDivider) const Divider(height: 0, thickness: 1),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(72);
}
