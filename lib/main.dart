
import 'package:flutter/material.dart';
import 'package:first_app/screen/home.dart';

void main() {
  runApp(const Towa());
}

class Towa extends StatefulWidget {
  const Towa({super.key});

  @override
  State<Towa> createState() => _TowaState();
}

class _TowaState extends State<Towa> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      themeMode: _themeMode, // change the theme

      home: HomePage(
        isDarkMode: _themeMode == ThemeMode.dark,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}
