import 'package:flutter/material.dart';
import 'package:image_gallery/app_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHome();
  }
}
