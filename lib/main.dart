import 'package:flutter/material.dart';
import 'package:image_gallery/screens/app_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.deepPurple,
    );

    return MaterialApp(
      theme: ThemeData(
        colorScheme: colorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(fontSize: 22, color: colorScheme.onPrimary),
        ),
      ),
      home: AppHome(),
    );
  }
}
