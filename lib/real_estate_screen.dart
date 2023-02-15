import 'package:flutter/material.dart';
import 'package:group_skill_project/common_widget/common_button.dart';
import 'package:group_skill_project/good_price_screen.dart';

class RealEstateScreen extends StatefulWidget {
  const RealEstateScreen({Key? key}) : super(key: key);

  @override
  State<RealEstateScreen> createState() => _RealEstateScreenState();
}

class _RealEstateScreenState extends State<RealEstateScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Image(
            image: AssetImage("assets/imagess/Splash Screen.png"),
            width: double.infinity,
          ),
          Container(
            decoration: const BoxDecoration(
             
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                    vertical: heigth / 12, horizontal: width / 4)
                .copyWith(top: 0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GoodPriceScreen(),
                  ),
                );
              },
              child: const CommonButton(
                buttonWidth: double.infinity,
                isText: "let's start",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
