import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:its_tech_app/utils/images.dart';

class SlideShow extends StatelessWidget {
  final List<String> images = Images.imageForSlideShow;
  const SlideShow({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.blue,
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        for (int i = 0; i < 4; i++)
          Image.asset(
            images[i],
            fit: BoxFit.cover,
          ),
      ],
    );
  }
}
