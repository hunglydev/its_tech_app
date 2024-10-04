import 'package:flutter/material.dart';

class NotiItem extends StatelessWidget {
  const NotiItem({super.key, required this.contentNoti});

  final contentNoti;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(
            Icons.notifications_none,
            size: 30.0,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              contentNoti,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
