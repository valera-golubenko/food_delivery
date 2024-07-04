import 'package:flutter/material.dart';
import 'package:food_delivery/ui/pages/preview/preview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Exo2'),
      home: const PreviewPage(),
    );
  }
}
