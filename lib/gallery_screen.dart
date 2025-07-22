import 'package:flutter/material.dart';
import 'package:image_gallery/widgets/gallery_data.dart';
import 'package:image_gallery/widgets/gallery_card.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        ...galleryData.map((item) {
          return GalleryCard(
            galleryImage: AssetImage(item.imagePath),
            cardTitle: item.imageTitle,
          );
        }),
      ],
    );
  }
}
