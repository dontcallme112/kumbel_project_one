import 'package:flutter/material.dart';
import 'package:project_app/widgets/bottom_nav.dart';
import 'home/home_screen.dart';


void main() {
  runApp(const KiruApp());
}

class KiruApp extends StatelessWidget {
  const KiruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNav(),
    );
  }
}
