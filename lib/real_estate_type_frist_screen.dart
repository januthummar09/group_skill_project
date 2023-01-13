import 'package:flutter/material.dart';
import 'package:group_skill_project/continue_email_screen.dart';
import 'package:group_skill_project/real_estate_second_screen.dart';

import 'add_location_ten_screen.dart';
import 'common_widget/common_button.dart';
import 'common_widget/common_text.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RealEstateTypeFristScreen extends StatefulWidget {
  const RealEstateTypeFristScreen({Key? key}) : super(key: key);

  @override
  State<RealEstateTypeFristScreen> createState() =>
      _RealEstateTypeFristScreenState();
}

class _RealEstateTypeFristScreenState extends State<RealEstateTypeFristScreen> {
  List imageList = [
    "assets/imagess/image 9.png",
    "assets/imagess/image 10.png",
    "assets/imagess/image 11.png",
    "assets/imagess/image 13.png",
    "assets/imagess/image 14.png",
    "assets/imagess/image 15.png",
    "assets/imagess/image 16.png",
    "assets/imagess/image 17.png",
    "assets/imagess/image 18.png",
    "assets/imagess/image 19.png",
    "assets/imagess/image 20.png",
    "assets/imagess/image 21.png",
    "assets/imagess/image 22.png",
    "assets/imagess/image 23.png",
    "assets/imagess/image 24.png",
  ];
  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width / 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddLocationTenScreen(),
                        ),
                      );
                    },
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: CommonCustomBackButton(),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContinueEmailScreen(),
                        ),
                      );
                    },
                    child: const CommonSkipButton(
                      isColor: Color(0xffF5F4F8),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: heigth / 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: CommonText(
                  firstNormalText: "Select your preferable ",
                  secoundBoldText: "\nreal estate type ",
                ),
              ),
              SizedBox(
                height: heigth / 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CommonNormalText(
                  isText: "You can edit this later on your account setting.",
                  fontColor: textColor,
                ),
              ),
              SizedBox(
                height: heigth / 30,
              ),
              Expanded(
                child: Container(
                  color: bgColor,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      MasonryGridView.count(
                        itemCount: imageList.length,
                        crossAxisCount: 3,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return Tile(
                            index: index,
                            extent: (index % 1.7 + 2) * 60,
                            imege: "${imageList[index]}",
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 25,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RealEstateSecondScreen(),
                              ),
                            );
                          },
                          child: CommonButton(
                            isText: "Show more",
                            buttonWidth: width / 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String? imege;

  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
    this.imege,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? Colors.yellow,
      height: extent,
      child: Image.asset(
        imege ?? "",
        fit: BoxFit.cover,
      ),
      // child: CircleAvatar(
      //   minRadius: 20,
      //   maxRadius: 20,
      //   backgroundColor: Colors.red,
      //   foregroundColor: Colors.black,
      //   child: Image.asset(
      //     imege ?? "assets/imagess/Location - Choose Location.png",
      //     fit: BoxFit.cover,
      //   ),
      //   // child: Text('$index', style: const TextStyle(fontSize: 20)),
      // ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
