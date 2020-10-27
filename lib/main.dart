import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/pages/home/home.dart';
import 'package:flutter_enterprise_note/pages/login/LoginPage.dart';
import 'package:flutter_enterprise_note/services/authentication/authentication.dart';

void main() {
  runApp(EnterpriseNote());
}

class EnterpriseNote extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enterprise Note',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Authentication.isSignedIn() ? HomePage() : LoginPage()
    );
  }
}
