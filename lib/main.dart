import 'package:flutter/material.dart';

import 'presentation/screens/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white.withOpacity(0.1),
          elevation: 0
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF5472DC),
          unselectedItemColor: Color(0xFFB4CCF1),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: MainScreen(),
    );
  }
}
