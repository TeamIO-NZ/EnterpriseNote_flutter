import 'package:flutter/material.dart';
import 'package:flutter_enterprise_note/widgets/core/core_widgets.dart';

class FourOFourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CoreWidgets.initPage(Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outlined,
            size: 128,
            color: Colors.grey,
          ),
          Text(
            "404 Page Not Found".toUpperCase(),
            style: TextStyle(
              letterSpacing: 2.0,
              color: Colors.grey
            ),
          )
        ],
      ),
    ));
  }
}
