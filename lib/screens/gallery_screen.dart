import 'package:flutter/material.dart';
import 'package:image_gallery/screens/gallery_data.dart';
import 'package:image_gallery/screens/gallery_card.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(12),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      crossAxisCount: 2,
      children: [
        ...galleryData.map((item) {
          return GalleryCard(
            galleryImage: AssetImage(item.imagePath),
            cardTitle: item.imageTitle,
            cardDesc: item.imageDescription,
            cardDate: item.imageDate,
          );
        }),
      ],
    );
  }
}
