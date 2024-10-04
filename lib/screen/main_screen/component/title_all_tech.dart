import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/screen/main_screen/component/text_main.dart';
import 'package:its_tech_app/utils/colors.dart';

class TitleAllTech extends StatelessWidget {
  const TitleAllTech({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextMain(text: language.alltechsupport),
        TextButton(
          onPressed: () {
            print("hello");
          },
          style: TextButton.styleFrom(
            foregroundColor: primaryColor,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ).copyWith(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
          ),
          child: Text(
            language.seeall,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
