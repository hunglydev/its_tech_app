import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/model/devices.dart';
import 'package:its_tech_app/screen/machine_total/components/devices_item.dart';
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
    return Scaffold(
      appBar: appBarWidget(
        language.total,
        color: context.primaryColor,
        textColor: whiteColor,
        showBack: true,
      ),
      body: Column(
        children: [
          DevicesItem(
            device: Device(status: "Waiting"),
            index: 1,
          )
        ],
      ),
    );
  }
}
