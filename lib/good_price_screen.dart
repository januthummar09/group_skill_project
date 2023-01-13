import 'package:flutter/material.dart';
import 'package:group_skill_project/continue_email_screen.dart';
import 'package:group_skill_project/one_click_screen.dart';

import 'common_widget/common_button.dart';

class GoodPriceScreen extends StatefulWidget {
  const GoodPriceScreen({Key? key}) : super(key: key);

  @override
  State<GoodPriceScreen> createState() => _GoodPriceScreenState();
}

class _GoodPriceScreenState extends State<GoodPriceScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          const Image(
            image: AssetImage("assets/imagess/Product Tour - 01.png"),
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: heigth / 25,
              right: width / 25,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContinueEmailScreen(),
                  ),
                );
              },
              child: const CommonSkipButton(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: heigth / 15,
            ).copyWith(top: 0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OneClickScreen(),
                    ),
                  );
                },
                child: const CommonButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
