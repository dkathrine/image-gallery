import 'package:flutter/material.dart';
import 'package:image_gallery/gallery_screen.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  List<Widget> screens = [Gallery(), Placeholder()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: <Widget>[
          NavigationDestination(icon: Icon(Icons.image), label: 'Bilder'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Über mich'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
