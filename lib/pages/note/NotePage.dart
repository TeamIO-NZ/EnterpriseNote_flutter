import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/services/authentication/authentication.dart';


class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    Authentication.authCheck(context);

    return Container();
  }
}
