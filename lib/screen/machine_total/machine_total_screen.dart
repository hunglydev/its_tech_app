import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:nb_utils/nb_utils.dart';

class MachineTotalScreen extends StatefulWidget {
  @override
  State createState() {
    return _MachineTotalScreenState();
  }
}

class _MachineTotalScreenState extends State<MachineTotalScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.height,
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Text(
            language.total,
            style: primaryTextStyle(),
          ),
        ),
      ],
    );
  }
}
