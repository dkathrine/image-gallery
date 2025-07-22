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
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Flexible(
              flex: 8,
              child: SizedBox.expand(
                child: Image(
                  image: galleryImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Text(cardTitle, textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
