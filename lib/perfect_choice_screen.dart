import 'package:flutter/material.dart';

import 'common_widget/common_button.dart';
import 'continue_email_screen.dart';
import 'one_click_screen.dart';

class PerfectChoiceScreen extends StatelessWidget {
  const PerfectChoiceScreen({Key? key}) : super(key: key);

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
            image: AssetImage("assets/imagess/Product Tour - 03.png"),
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
              child: const CommonSkipButton(),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width / 7,
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
                            builder: (context) => const OneClickScreen(),
                          ),
                        );
                      },
                      child: const CommonBackButton(),),
                  InkWell(
                     onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContinueEmailScreen(),
                  ),
                );
              },
                    child: const CommonButton(),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
