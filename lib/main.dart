import 'package:flutter/material.dart';
import 'package:assessment/homepage.dart';
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home', // Set an initial route
      routes: {
        'home': (context) =>  HomePage(),
      },
    );
  }
}
