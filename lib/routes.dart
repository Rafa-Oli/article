import 'package:flutter/material.dart';

import 'features/authentication/authentication.dart';

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
  LoginScreen.route: (context) {
    return const LoginScreen();
  },
  RegisterScreen.route: (context) {
    return const RegisterScreen();
  },
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
