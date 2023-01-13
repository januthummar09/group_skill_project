import 'package:flutter/material.dart';
import 'package:group_skill_project/common_widget/common_textfild.dart';
import 'package:group_skill_project/continue_email_screen.dart';
import 'package:group_skill_project/fill_information_screen.dart';
import 'package:group_skill_project/real_estate_second_screen.dart';

import 'common_widget/common_button.dart';
import 'common_widget/common_text.dart';

class PaymentMethodFirstScreen extends StatefulWidget {
  const PaymentMethodFirstScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodFirstScreen> createState() =>
      _PaymentMethodFirstScreenState();
}

class _PaymentMethodFirstScreenState extends State<PaymentMethodFirstScreen> {
  TextEditingController paybleNameController = TextEditingController();
  TextEditingController paybleEmailController = TextEditingController();
  TextEditingController mastercardNameController = TextEditingController();
  TextEditingController mastercardCvvNumberController = TextEditingController();
  TextEditingController mastercardCvvController = TextEditingController();
  TextEditingController mastercardDateController = TextEditingController();
  @override
  void dispose() {
    paybleNameController.dispose();
    paybleEmailController.dispose();
    mastercardNameController.dispose();
    mastercardCvvNumberController.dispose();
    mastercardCvvController.dispose();
    mastercardDateController.dispose();
    super.dispose();
  }

  int? intialIndex;

  Map payment = {
    "cardData": [
      {
        "cardIcon": "assets/imagess/Group1.png",
        "cardText": "Paypal",
      },
      {
        "cardIcon": "assets/imagess/Mastercard - Normal.png",
        "cardText": "Mastercard",
      },
      {
        "cardIcon": "assets/imagess/Vector.png",
        "cardText": "Visa",
      }
    ],
  };

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
      // resizeToAvoidBottomInset: false,
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
                        MaterialPageRoute(
                          builder: (context) => const RealEstateSecondScreen(),
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
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: heigth / 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CommonText(
                        firstNormalText: "Add your ",
                        secoundBoldText: "\npayment method ",
                      ),
                    ),
                    SizedBox(
                      height: heigth / 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CommonNormalText(
                        isText:
                            "You can edit this later on your account setting.",
                        fontColor: textColor,
                      ),
                    ),
                    // SizedBox(
                    //   height: heigth / 30,
                    // ),
                    Image.asset(
                      "assets/imagess/Credit Card2.png",
                      width: double.infinity,
                    ),

                    SizedBox(
                      height: heigth / 14,
                      // color: Colors.yellow,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          width: width / 50,
                        ),
                        itemCount: payment["cardData"].length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {});
                              showIndex(index);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 32,
                                ),
                                height: heigth / 12,
                                width: index == 1 ? width / 2.3 : width / 2.9,
                                color: intialIndex == index
                                    ? const Color(0xff234F68)
                                    : containerColor,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "${payment["cardData"][index]["cardIcon"]}",
                                    ),
                                    const Spacer(),
                                    CommonNormalText(
                                      isText:
                                          "${payment["cardData"][index]["cardText"]}",
                                      fontColor: intialIndex == index
                                          ? bgColor
                                          : textColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: heigth / 40,
                    ),

                    intialIndex == 0
                        ? Column(
                            children: [
                              CommonTextfild(
                                textFildNameController: paybleNameController,
                                isHintText: "Full name",
                                suffixIcon: Icons.person,
                                preffixIcon: Icons.person,
                              ),
                              SizedBox(
                                height: heigth / 40,
                              ),
                              CommonTextfild(
                                textFildNameController: paybleEmailController,
                              ),
                              SizedBox(
                                height: heigth / 40,
                              ),
                            ],
                          )
                        : intialIndex == 1
                            ? Column(
                                children: [
                                  CommonTextfild(
                                    textFildNameController:
                                        mastercardNameController,
                                    isHintText: "Full name",
                                    suffixIcon: Icons.person,
                                    preffixIcon: Icons.person,
                                  ),
                                  SizedBox(
                                    height: heigth / 40,
                                  ),
                                  CommonTextfild(
                                    textFildNameController:
                                        mastercardCvvNumberController,
                                    isHintText: "Cvv number",
                                    preffixIcon: Icons.credit_card,
                                    suffixIcon: Icons.credit_card,
                                  ),
                                  SizedBox(
                                    height: heigth / 40,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CommonTextfild(
                                          textFildNameController:
                                              mastercardDateController,
                                          isHintText: "Current",
                                          preffixIcon: Icons.date_range,
                                          suffixIcon: Icons.date_range,
                                        ),
                                      ),
                                      SizedBox(
                                        width: width / 30,
                                      ),
                                      Expanded(
                                        child: CommonTextfild(
                                          isHintText: "Cvv",
                                          textFildNameController:
                                              mastercardCvvController,
                                          preffixIcon: Icons.credit_card,
                                          suffixIcon: Icons.credit_card,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: heigth / 40,
                                  ),
                                ],
                              )
                            : intialIndex == 2
                                ? Container(
                                    height: 100,
                                    width: 200,
                                    color: Colors.blue,
                                  )
                                : SizedBox(
                                    height: heigth / 6,
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
                                  const FillInformationScreen(),
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
            ],
          ),
        ),
      ),
    );
  }

  void showIndex(index) {
    intialIndex = index;
  }
}
