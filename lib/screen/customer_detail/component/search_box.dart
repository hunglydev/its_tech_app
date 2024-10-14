import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    final withScreen = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: withScreen * 0.75,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          hintText: 'Tìm kiếm...',
          hintStyle: TextStyle(fontSize: 16.0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.orange,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
