import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/pages/home/HomePage.dart';
import 'package:flutter_enterprise_note/pages/login/LoginPage.dart';

class RouteConfig {
  static List<Path> paths = [

    Path(
      r'^' + HomePage.route,
          (context, match) => HomePage(),
    ),
    Path(
      r'^' + LoginPage.route,
          (context, match) => LoginPage(),
    ),
    // Path(
    //   r'^/note/([\w-]+)$',
    //       (context, match) => Note.matchNoteRoute(match),
    // ),
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    for(Path path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if(regExpPattern.hasMatch(settings.name)) {
        final firstMatch = regExpPattern.firstMatch(settings.name);
        final match = (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
        return MaterialPageRoute<void>(
            builder: (context) => path.builder(context, match),
            settings: settings
        );
      }
    }
    return null;
  }
}

class Path {
  const Path(this.pattern, this.builder);

  final String pattern;
  final Widget Function(BuildContext, String) builder;
}
