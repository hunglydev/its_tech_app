import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:nb_utils/nb_utils.dart';

class AddDeviceScreen extends StatefulWidget {
  const AddDeviceScreen({super.key});
  @override
  State createState() {
    return _AddDeviceScreenState();
  }
}

class _AddDeviceScreenState extends State<AddDeviceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(language.addDevice),
      body: Column(
        children: [],
      ),
    );
  }
}
