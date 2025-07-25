import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.detailImage,
    required this.detailTitle,
    required this.detailDesc,
    required this.detailDate,
  });

  final ImageProvider detailImage;
  final String detailTitle;
  final String detailDesc;
  final String detailDate;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(image: detailImage, width: double.infinity),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detailTitle,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              Text(
                detailDate,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
              Text(detailDesc, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }
}
