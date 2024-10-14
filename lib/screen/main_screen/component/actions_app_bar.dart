import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../noti_screen/screen/noti_screen.dart';

class ActionsAppBar extends StatelessWidget {
  ActionsAppBar({super.key, required this.ktra});
  bool ktra;

  @override
  Widget build(BuildContext context) {
    Widget action = Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16, top: 4),
          decoration: const BoxDecoration(
            color: backgroundiconbell,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NotiScreen(),
              ));
            },
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: primaryColor,
            ),
          ),
        ),
        if (ktra)
          Positioned(
            right: 12,
            child: Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: primaryColor),
            ),
          )
        else
          const SizedBox(
            height: 12,
            width: 12,
          )
      ],
    );
    return action;
  }
}
