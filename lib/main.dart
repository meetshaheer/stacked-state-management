import 'package:flutter/material.dart';
import 'package:hehehehe/app/app.locator.dart';
import 'package:hehehehe/screens/home/home_view.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
