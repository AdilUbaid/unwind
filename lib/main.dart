import 'package:flutter/material.dart';
import 'package:unwind/pages/home/home_screen.dart';
import 'package:unwind/utils/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
        
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark, // Dark theme
      // ),
      // themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}
