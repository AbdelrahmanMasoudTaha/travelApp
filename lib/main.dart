import 'package:flutter/material.dart';
import 'package:travel/pages/detail_page.dart';
import 'package:travel/pages/navpages/home_page.dart';
import 'package:travel/pages/main_page.dart';
import 'package:travel/pages/welcome_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                  color:Colors.black
              ),
              elevation: 0,
              backgroundColor: Colors.white
          )
      ),
     home:DetailPage(),
    );
  }
}


