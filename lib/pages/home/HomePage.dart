import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/services/authentication/authentication.dart';
import 'package:flutter_enterprise_note/widgets/core/core_widgets.dart';

class HomePage extends StatefulWidget {
  static const String route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Authentication.authCheck(context);
    return CoreWidgets.initPage(null);
  }
}
