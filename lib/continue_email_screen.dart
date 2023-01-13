import 'package:flutter/material.dart';
import 'package:group_skill_project/common_widget/common_divider.dart';
import 'package:group_skill_project/sign_in_six_screen.dart';

import 'common_widget/common_button.dart';
import 'common_widget/common_text.dart';
import 'create_account_eight_screen.dart';

class ContinueEmailScreen extends StatefulWidget {
  const ContinueEmailScreen({Key? key}) : super(key: key);

  @override
  State<ContinueEmailScreen> createState() => _ContinueEmailScreenState();
}

class _ContinueEmailScreenState extends State<ContinueEmailScreen> {
  Color bgColor = const Color(0xffFFFFFF);

  List image = ["123", 123, "janki", 12];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width / 30,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: CommonImage(),
                  ),
                  SizedBox(
                    width: width / 40,
                  ),
                  const Expanded(
                    child: CommonImage(
                      isImage: "assets/imagess/Rectangle 11.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: heigth / 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: CommonImage(
                      isImage: "assets/imagess/Rectangle 9.png",
                    ),
                  ),
                  SizedBox(
                    width: width / 40,
                  ),
                  const Expanded(
                    child: CommonImage(
                      isImage: "assets/imagess/Rectangle 10.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: heigth / 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CommonText(),
                    ),
                    SizedBox(
                      height: heigth / 25,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width / 15,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInSixScreen(),
                            ),
                          );
                        },
                        child: const CommonButtonWithIcon(
                          buttonWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heigth / 15,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            color: Color(0xffECEDF3),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: CommonNormalText(
                            isText: "OR",
                            isFontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            color: Color(0xffECEDF3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: heigth / 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CommonContainer(
                          isImage: "assets/imagess/Google - normal.png",
                        ),
                        CommonContainer(),
                      ],
                    ),
                    SizedBox(
                      height: heigth / 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const CreateAccountEightScreen(),
                          ),
                        );
                      },
                      child: CommonText(
                        firstNormalText: "Don't have an account? ",
                        secoundBoldText: "Register",
                        fontSize: text * 15,
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
}
