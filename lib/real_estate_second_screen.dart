import 'package:flutter/material.dart';
import 'package:group_skill_project/continue_email_screen.dart';
import 'package:group_skill_project/payment_method_first_screen.dart';

import 'common_widget/common_button.dart';
import 'common_widget/common_text.dart';

class RealEstateSecondScreen extends StatefulWidget {
  const RealEstateSecondScreen({Key? key}) : super(key: key);

  @override
  State<RealEstateSecondScreen> createState() => _RealEstateSecondScreenState();
}

class _RealEstateSecondScreenState extends State<RealEstateSecondScreen> {
  Map data = {
    "imageData": [
      {
        "image": "assets/imagess/Shape1.png",
        "name": "Apartment",
        "change": false,
      },
      {
        "image": "assets/imagess/Shape2.png",
        "name": "Villa",
        "change": false,
      },
      {
        "image": "assets/imagess/Shape3.png",
        "name": "House",
        "change": false,
      },
      {
        "image": "assets/imagess/Shape4.png",
        "name": "Cottage",
        "change": false,
      },
      {
        "image": "assets/imagess/Shape5.png",
        "name": "House",
        "change": false,
      },
      {
        "image": "assets/imagess/Shape6.png",
        "name": "House",
        "change": false,
      },
    ],
  };

  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);

  bool isIcon = true;
  bool isSelect = false;
  int? intialIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    // double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: bgColor,
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
                        // MaterialPageRoute(
                        //   builder: (context) => const AddLocationTenScreen(),
                        // ),
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
                      GridView.builder(
                        itemCount: data["imageData"].length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: heigth / 3.5,
                        ),
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              padding:
                                  const EdgeInsets.all(8).copyWith(bottom: 15),
                              color: data["imageData"][index]["change"]
                                  ? const Color(0xff1F4C6B)
                                  : const Color(0xffF5F4F8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Container(
                                            height: heigth / 4.5,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  data["imageData"][index]
                                                      ["image"],
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                              ),
                                              child: Wrap(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(
                                                        () {
                                                          if (data["imageData"]
                                                                  [index]
                                                              ["change"]) {
                                                            data["imageData"]
                                                                        [index]
                                                                    ["change"] =
                                                                false;
                                                          } else {
                                                            data["imageData"]
                                                                        [index]
                                                                    ["change"] =
                                                                true;
                                                          }

                                                          // setIndex(index);
                                                          // isSelect = !isSelect;
                                                          debugPrint(
                                                              "select...${data["imageData"][index]["change"]}");
                                                        },
                                                      );
                                                    },
                                                    child: ClipOval(
                                                      child: Container(
                                                        height: heigth / 30,
                                                        width: heigth / 30,
                                                        color: data["imageData"]
                                                                    [index]
                                                                ["change"]
                                                            ? const Color(
                                                                0xff48A462)
                                                            : bgColor,
                                                        child: Icon(
                                                          Icons.done,
                                                          size: 15,
                                                          color: data["imageData"]
                                                                      [index]
                                                                  ["change"]
                                                              ? bgColor
                                                              : const Color(
                                                                  0xff1F4C6B),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          child: CommonNormalText(
                                            isText:
                                                "${data["imageData"][index]["name"]}",
                                            fontColor: data["imageData"][index]
                                                    ["change"]
                                                ? bgColor
                                                : const Color(0xff252B5C),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                                    const PaymentMethodFirstScreen(),
                              ),
                            );
                          },
                          child: CommonButton(
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

  setIndex(index) {
    intialIndex = index;
  }
}
