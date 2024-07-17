import 'package:flutter/material.dart';
import 'package:myapp/screens/about_screens.dart';
import 'package:myapp/screens/band_list.screen.dart';
import 'package:myapp/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => HomeScreen(),
        // '/about_band': (context) => const AboutBandScreen(),
        '/album_band': (context) => BandListScreen(),
        '/about': (context) => AboutPage()
      },
      initialRoute: "home",
      home: HomeScreen(),
    );
  }
}
