import 'package:flutter/material.dart';
import 'package:its_tech_app/model/users.dart';

import '../../../main.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Users user = Users("", "Lý Hải Hưng", "", "", "", "", "", "", "");

    Widget title = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${language.hello},",
          style: const TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          user.name ?? '',
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ],
    );
    return title;
  }
}
