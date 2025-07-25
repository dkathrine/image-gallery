import 'package:flutter/material.dart';
import 'package:image_gallery/screens/detail_screen.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    super.key,
    required this.galleryImage,
    required this.cardTitle,
    required this.cardDesc,
    required this.cardDate,
  });
  final ImageProvider galleryImage;
  final String cardTitle;
  final String cardDesc;
  final String cardDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(title: Text('Details'), centerTitle: true),
              body: Details(
                detailImage: galleryImage,
                detailTitle: cardTitle,
                detailDesc: cardDesc,
                detailDate: cardDate,
              ),
            );
          },
        ),
      ),
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
