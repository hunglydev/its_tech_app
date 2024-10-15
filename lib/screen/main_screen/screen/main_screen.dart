import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/model/noti.dart';
import 'package:nb_utils/nb_utils.dart';
import '../component/actions_app_bar.dart';
import '../component/slide_show.dart';
import '../component/tech_item.dart';
import '../component/text_main.dart';
import '../component/title_all_tech.dart';
import '../component/title_app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DateTime? lastPressed;

  bool onBackPage() {
    final now = DateTime.now();

    if (lastPressed == null ||
        now.difference(lastPressed!) > const Duration(seconds: 2)) {
      lastPressed = now;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nhấn thêm lần nữa để thoát ứng dụng'),
          duration: Duration(seconds: 2),
        ),
      );
      return false;
    }
    return true;
  }

  bool ktra = false;

  @override
  void initState() {
    List<Noti> listNoti = [];
    Noti noti = Noti("Bạn có 1 máy đợi tech", true);
    listNoti.add(noti);
    for (var i = 1; i < 10; i++) {
      Noti noti = Noti("Bạn có 1 máy đợi tech", true);
      listNoti.add(noti);
    }
    if (listNoti.where((n) => !n.read!).toList().isNotEmpty) {
      ktra = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return onBackPage();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const TitleAppBar(),
          actions: [
            ActionsAppBar(check: ktra),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            return Future<void>.delayed(const Duration(seconds: 3));
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  8.height,
                  const SlideShow(),
                  8.height,
                  const TitleAllTech(),
                  8.height,
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const TechItem();
                      },
                    ),
                  ),
                  8.height,
                  TextMain(text: language.allMachineBeginMade),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
