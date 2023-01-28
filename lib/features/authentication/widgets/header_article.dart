import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderArticle extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  final bool showDivider;

  final GestureTapCallback? onBack;

  final Widget? onAction;

  const HeaderArticle({
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
        color: Colors.white,
        child: SizedBox(
          height: 72,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                            width: 32,
                            height: 32,
                            child:
                                SvgPicture.asset('lib/assets/svgs/Logo 1.svg')),
                      ),
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.help,
                              color: Colors.black,
                            )
                          ],
                        ),
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
  Size get preferredSize => const Size.fromHeight(72);
}
