import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/model/devices.dart';
import 'package:its_tech_app/model/users.dart';
import 'package:its_tech_app/screen/machine_total/components/devices_item.dart';
import 'package:its_tech_app/screen/main_screen/component/slide_show.dart';
import 'package:its_tech_app/screen/main_screen/component/tech_item.dart';
import 'package:its_tech_app/screen/main_screen/component/text_main.dart';
import 'package:its_tech_app/screen/main_screen/component/title_all_tech.dart';
import 'package:its_tech_app/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Users user = new Users("", "Lý Hải Hưng", "", "", "", "", "", "", "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${language.hello},",
              style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              user.name ?? '',
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16, top: 4),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 214, 204),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: primaryColor,
                  ),
                ),
              ),
              Positioned(
                right: 12,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: primaryColor),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SlideShow(),
              16.height,
              const TitleAllTech(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TechItem(),
                    TechItem(),
                    TechItem(),
                    TechItem(),
                    TechItem(),
                  ],
                ),
              ),
              16.height,
              TextMain(text: language.allmachinebeingmade),
            ],
          ),
        ),
      ),
    );
  }
}
