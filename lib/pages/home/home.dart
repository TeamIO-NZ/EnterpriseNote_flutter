import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/widgets/core/core_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CoreWidgets.initPage(null);
  }
}
