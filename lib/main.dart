import 'package:btmnavbar_persist_navpages/pages/home_page.dart';
import 'package:flutter/material.dart';
// https://www.youtube.com/watch?v=YJEMMhA9udQ
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}
