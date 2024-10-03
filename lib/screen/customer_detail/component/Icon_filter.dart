import 'package:flutter/material.dart';

class IconFilter extends StatefulWidget {
  const IconFilter({super.key});

  @override
  State<IconFilter> createState() => _IconFilterState();
}

class _IconFilterState extends State<IconFilter> {
  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: () {},
      icon: Icon(Icons.filter_alt_outlined),
    );
  }
}
