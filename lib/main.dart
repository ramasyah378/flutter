import 'package:flutter/material.dart';
import 'package:instagram/navigation.dart';
import 'package:instagram/screen/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstagramHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
