import 'package:flutter/material.dart';

import 'screens/main_page.dart';

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
      title: 'Diary Book',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity, //used to adapt visual based on platform used to look at this app
        primarySwatch: Colors.cyan,
        
      ),
      home: const MainPage(),
    );
  }
}

