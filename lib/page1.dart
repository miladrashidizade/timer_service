import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.green,
        body: Container(
          color: Colors.green,
          child: Center(
            child: RaisedButton(
              onPressed: () {
                final snackBar = SnackBar(content: Text('Are you talkin\' to me?'));
                _scaffoldKey.currentState.showSnackBar(snackBar);
              },
              child: Text("start"),
            ),
          ),
        ));
  }
}
