import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_enterprise_note/widgets/core/core_widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  static const String route = "/login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _enabled = true;

  void _handleLogin() {
    setState(() {
      _enabled = false;
    });
  }

  void _handleRegister() {
    setState(() {
      _enabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CoreWidgets.initPage(new Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(children: [
            Container(
              width: 500,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, offset: Offset(8, 8))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      "LOGIN TO ENTERPRISE NOTE",
                      style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: "USERNAME",
                            labelStyle: TextStyle(
                                color: Colors.white, letterSpacing: 2.0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        enabled: _enabled,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(
                              color: Colors.white, letterSpacing: 2.0),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          onPressed: _handleLogin,
                          icon: Icon(Icons.login, color: Colors.white),
                          label: Text(
                            "LOGIN",
                            style: TextStyle(
                                letterSpacing: 2.0, color: Colors.white),
                          )
                        ),
                        FlatButton.icon(
                          onPressed: _handleRegister,
                          icon: Icon(Icons.create, color: Colors.white),
                          label: Text(
                            "REGISTER",
                            style: TextStyle(
                                letterSpacing: 2.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 175,
                          height: 2,
                          color: Colors.grey[600],
                        ),
                        Text(
                          "  OR  ",
                          style: TextStyle(
                              letterSpacing: 2.0, color: Colors.grey[600]),
                        ),
                        Container(
                          width: 175,
                          height: 2,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SignInButton(
                          Buttons.Yahoo,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Hotmail,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Visibility(
              child: Container(
                width: 500,
                height: 600,
                decoration: BoxDecoration(
                    color: Colors.black38,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator()
                  ],
                ),
              ),
              visible: !_enabled,
            )
          ])
        ],
      ),
    ));
  }
}
