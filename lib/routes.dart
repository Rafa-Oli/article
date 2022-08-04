import 'package:article/initial_screen.dart';
import 'package:flutter/material.dart';
import 'utils/modal_route_extension.dart';

const kDeepLinkRoute = 'DeepLinkRoute';

class DeepLinkRouteArguments {
  final String url;
  final bool fromStory;

  DeepLinkRouteArguments({required this.url, this.fromStory = false});
}

final Map<String, WidgetBuilder> routes = {
  InitialScreen.route: (context) {
    return const InitialScreen();
  },
  // kDeepLinkRoute: (context) {
  //   final arguments =
  //       ModalRoute.of(context).arguments<DeepLinkRouteArguments>()!;
  //   final uri = Uri.parse(arguments.url);
  //   final key = '${uri.scheme}://${uri.host}';

  //   // if (links.containsKey(key)) {
  //   //   return links[key]!(context, uri);
  //   // }

  //   // return const UnknownErrorScreen();
  // }
};

PageRoute<dynamic> defaultOnGenerateRoute(RouteSettings settings) {
  late final slideUp = PageRouteBuilder(
    pageBuilder: (context, animation, _) {
      return routes[settings.name]!(context);
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeIn;

      final tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: kThemeAnimationDuration,
    reverseTransitionDuration: kThemeAnimationDuration,
    settings: settings,
  );

  if (settings.name == kDeepLinkRoute) {
    final arguments = settings.arguments as DeepLinkRouteArguments;
    if (arguments.fromStory) {
      return slideUp;
    }
  }

  return MaterialPageRoute(
    builder: routes[settings.name]!,
    settings: settings,
  );
}
