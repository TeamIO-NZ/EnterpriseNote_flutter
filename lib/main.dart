import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/pages/404/404Page.dart';
import 'package:flutter_enterprise_note/pages/home/HomePage.dart';
import 'package:flutter_enterprise_note/pages/login/LoginPage.dart';
import 'package:flutter_enterprise_note/services/authentication/authentication.dart';
import 'package:flutter_enterprise_note/services/routing/Routing.dart';

void main() {
  runApp(EnterpriseNote());
}

class EnterpriseNote extends StatelessWidget {
  //TODO: switch to using nav 2.0 https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enterprise Note',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
          )
        )
      ),

      initialRoute:
          Authentication.isSignedIn() ? HomePage.route : LoginPage.route,
      onGenerateRoute: RouteConfig.onGenerateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(settings: settings, builder: (context) => FourOFourPage()),
    );
  }
}