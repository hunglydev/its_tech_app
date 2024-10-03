import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/screen/noti_screen/component/noti.dart';
import 'package:nb_utils/nb_utils.dart';

class NotiScreen extends StatelessWidget {
  const NotiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        language.notification,
        color: context.primaryColor,
        textColor: whiteColor,
        showBack: true,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            "Mới",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Column(
            children: [
              NotiItem(contentNoti: "Bạn đang có 1 máy đợi tech."),
              NotiItem(contentNoti: "Bạn đang có 1 máy đợi tech."),
            ],
          ),
          SizedBox(height: 8),
          Text(
            "Cũ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Column(
            children: [
              NotiItem(contentNoti: "Bạn đang có 1 máy đợi tech."),
              NotiItem(contentNoti: "Bạn đang có 1 máy đợi tech."),
            ],
          )
        ],
      ),
    );
  }
}
