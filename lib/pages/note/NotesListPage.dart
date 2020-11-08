import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/widgets/core/core_widgets.dart';

class NotesListPage extends StatefulWidget {
  @override
  _NotesListPageState createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  @override
  Widget build(BuildContext context) {
    return CoreWidgets.initPage(
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  
                );
              },
            )
          ],
        ),
      )
    );
  }
}
