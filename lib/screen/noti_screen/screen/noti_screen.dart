import 'package:flutter/material.dart';
import 'package:its_tech_app/model/noti.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../main.dart';
import '../component/noti_item.dart';

class NotiScreen extends StatelessWidget {
  const NotiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Noti> listNoti = [];
    Noti noti = Noti("Bạn có 1 máy đợi tech", true);
    listNoti.add(noti);
    for (var i = 1; i < 10; i++) {
      Noti noti = Noti("Bạn có 1 máy đợi tech", true);
      listNoti.add(noti);
    }

    final newNoti = listNoti.where((n) => !n.read!).toList();
    final oldNoti = listNoti.where((n) => n.read!).toList();

    return Scaffold(
      appBar: appBarWidget(
        language.notification,
        color: context.primaryColor,
        textColor: whiteColor,
        showBack: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        child: ListView.builder(
          itemCount: newNoti.length + oldNoti.length + 2,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  "Mới",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              );
            } else if (index > 0 && index <= newNoti.length) {
              return NotiItem(contentNoti: newNoti[index - 1].content);
            } else if (index == newNoti.length + 1) {
              return const Padding(
                padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  "Cũ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              );
            } else {
              return NotiItem(
                  contentNoti: oldNoti[index - newNoti.length - 2].content);
            }
          },
        ),
      ),
    );
  }
}
