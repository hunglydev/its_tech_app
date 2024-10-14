import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';

class ItsDropDownButton extends StatefulWidget {
  const ItsDropDownButton({super.key});
  @override
  State createState() {
    return ItsDropDownButtonState();
  }
}

class ItsDropDownButtonState extends State<StatefulWidget> {
  List<String> itemDrop = [language.edit, language.remove];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: itemDrop.map((e) {
        return DropdownMenuItem(child: Container());
      }).toList(),
      onChanged: (value) {},
    );
  }
}
