import 'package:flutter/material.dart';

class AddDeviceField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const AddDeviceField({super.key});
  @override
  State<StatefulWidget> createState() {
    return AddDeviceFieldState();
  }
}

class AddDeviceFieldState extends State<AddDeviceField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text()],
    );
  }
}
