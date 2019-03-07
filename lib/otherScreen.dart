import 'package:flutter/material.dart';

class otherScreen extends StatefulWidget {
  var _num;
  otherScreen(this._num);

  @override
  _otherScreenState createState() => _otherScreenState();
}

class _otherScreenState extends State<otherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button " + widget._num.toString()),
      ),
    );
  }
}
