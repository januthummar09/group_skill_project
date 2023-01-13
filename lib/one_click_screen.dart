import 'package:flutter/material.dart';
import 'package:group_skill_project/good_price_screen.dart';
import 'package:group_skill_project/perfect_choice_screen.dart';

import 'common_widget/common_button.dart';
import 'continue_email_screen.dart';

class OneClickScreen extends StatefulWidget {
  const OneClickScreen({Key? key}) : super(key: key);

  @override
  State<OneClickScreen> createState() => _OneClickScreenState();
}

class _OneClickScreenState extends State<OneClickScreen> {
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
            image: AssetImage("assets/imagess/Product Tour - 02.png"),
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
              horizontal: width / 8,
              vertical: heigth / 14,
            ).copyWith(top: 0, right: heigth / 12),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GoodPriceScreen(),
                          ),
                        );
                      },
                      child: const CommonBackButton()),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PerfectChoiceScreen(),
                          ),
                        );
                      },
                      child: const CommonButton()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
