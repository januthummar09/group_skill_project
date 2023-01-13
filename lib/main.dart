import 'package:flutter/material.dart';
import 'package:group_skill_project/payment_method_first_screen.dart';
import 'package:group_skill_project/real_estate_screen.dart';
import 'package:group_skill_project/real_estate_second_screen.dart';
import 'package:group_skill_project/real_estate_type_frist_screen.dart';
import 'package:group_skill_project/sign_in_six_screen.dart';

import 'choose_your_location_screen.dart';
import 'common_widget/common_divider.dart';
import 'continue_email_screen.dart';
import 'fill_information_screen.dart';
import 'grid_view_screen.dart';

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
      // home: const RealEstateScreen(),
      home: const RealEstateTypeFristScreen(),
      // home: const ContinueEmailScreen(),
    );
  }
}
