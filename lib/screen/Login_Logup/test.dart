import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class mainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mainScreenState();
  }
}

class mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Text('đâ'),
      ),
    ));
  }
}
