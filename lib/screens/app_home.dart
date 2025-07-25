import 'package:flutter/material.dart';
import 'package:image_gallery/screens/gallery_screen.dart';
import 'package:image_gallery/screens/about_me_screen.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  List<Widget> screens = [Gallery(), AboutMe()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyGallery'), centerTitle: true),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
        destinations: <Widget>[
          NavigationDestination(icon: Icon(Icons.image), label: 'Bilder'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Über mich'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
