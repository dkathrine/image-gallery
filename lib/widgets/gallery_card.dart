import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    super.key,
    required this.galleryImage,
    required this.cardTitle,
  });
  final ImageProvider galleryImage;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Image(image: galleryImage),
          Container(child: Text(cardTitle)),
        ],
      ),
    );
  }
}
