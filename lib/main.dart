import 'package:flutter/material.dart';
import 'package:group_skill_project/real_estate_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RealEstateScreen(),
      // home: const RealEstateTypeFristScreen(),
      // home: const ContinueEmailScreen(),
    );
  }
}
