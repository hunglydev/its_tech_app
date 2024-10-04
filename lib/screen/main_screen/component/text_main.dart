import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class TextMain extends StatelessWidget {
  const TextMain({super.key, required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: boldTextStyle());
  }
}
