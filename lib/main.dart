import 'package:flutter/material.dart';
//import 'package:perpustakaan_uas/views/homePage.dart';
//import 'package:perpustakaan_uas/views/navbar.dart';
//import 'package:perpustakaan_uas/views/loginPage.dart';
import 'package:perpustakaan_uas/views/startPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Perpustakaan",
      home: startPage(),
      
    );
  }
}