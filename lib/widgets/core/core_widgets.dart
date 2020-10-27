import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/services/authentication/authentication.dart';

class CoreWidgets {

  static Widget initPage(Widget child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            "Enterprise Note".toUpperCase(),
            style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.white
            ),
          ),
          centerTitle: true,
          actions: Authentication.isSignedIn() ? [CoreWidgets.getUserButton()] : []
        ),
        body: child,
      ),
    );
  }

  static Widget getUserButton() => IconButton(icon: Icon(Icons.person, color: Colors.white,), onPressed: () {},);
}