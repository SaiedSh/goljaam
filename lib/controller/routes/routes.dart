import 'package:flutter/material.dart';
import 'package:goljaam_education/main.dart';
import 'package:goljaam_education/view/game/snake_game.dart';
import 'package:goljaam_education/view/profile/profile_update.dart';

class MyRoutes {
  //route names
  // auth
  static const String login = "/login";
  static const String snakeGame = "/snakeGame";
  static const String profileUpdate = "/profileUpdate";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // auth
      case login:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => BottomNavBar(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      case snakeGame:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => GamePage(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      case profileUpdate:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => ProfileUpdateScreen(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );

      // 404
    }
    return null;
  }
}
