import 'package:flutter/material.dart';

class TechItem extends StatefulWidget {
  const TechItem({super.key});

  @override
  State<TechItem> createState() => _TechItemState();
}

class _TechItemState extends State<TechItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("hello");
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage(
                'assets/images/image1.jpg',
              ),
            ),
            SizedBox(height: 8),
            Text(
              "18/11/2024",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
