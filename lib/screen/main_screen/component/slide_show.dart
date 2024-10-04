import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShow extends StatelessWidget {
  final List<String> images = [
    'assets/images/image1.jpg',
    'assets/images/image1.jpg',
    'assets/images/image1.jpg',
    'assets/images/image1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.blue,
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.asset(
          'assets/images/image1.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/image1.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/image1.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/image1.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
