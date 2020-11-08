import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/pages/login/LoginPage.dart';

class Authentication {
  static bool isSignedIn() {
    return false; //TODO
  }

  static void authCheck(BuildContext context) {
    if (!isSignedIn()) {
      Navigator.popAndPushNamed(context, LoginPage.route);
    }
  }
}
