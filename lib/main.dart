import 'dart:async';

import 'package:article/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/authentication/screens/initial_screen.dart';

void main() {
  runApp(const ArticleApp(
    title: 'teste',
  ));
}

class ArticleApp extends StatefulWidget {
  const ArticleApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ArticleApp> createState() => _ArticleAppState();
}

typedef AppRootNavigator = GlobalKey<NavigatorState>;

class _ArticleAppState extends State<ArticleApp> {
  final AppRootNavigator _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppRootNavigator>.value(value: _navigatorKey)
      ],
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        initialRoute: InitialScreen.route,
        onGenerateInitialRoutes: ((initialRoute) {
          if (initialRoute != InitialScreen.route) {
            throw UnimplementedError(initialRoute);
          }
          final initial =
              defaultOnGenerateRoute(RouteSettings(name: initialRoute));

          return [initial];
        }),
        onGenerateRoute: defaultOnGenerateRoute,
      ),
    );
  }
}
