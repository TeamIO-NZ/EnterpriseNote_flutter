import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/pages/home/home.dart';

void main() {
  runApp(EnterpriseNote());
}

class EnterpriseNote extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}
