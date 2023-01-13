import 'package:flutter/material.dart';
import 'package:group_skill_project/otp_nine_screen.dart';

import 'common_widget/common_button.dart';
import 'common_widget/common_text.dart';
import 'common_widget/common_textfild.dart';
import 'continue_email_screen.dart';

class CreateAccountEightScreen extends StatefulWidget {
  const CreateAccountEightScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountEightScreen> createState() =>
      _CreateAccountEightScreenState();
}

class _CreateAccountEightScreenState extends State<CreateAccountEightScreen> {
  bool isShow = false;
  String password = "123456";

  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    // double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width / 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContinueEmailScreen(),
                    ),
                  );
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: CommonCustomBackButton(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width / 20,
                vertical: heigth / 40,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CommonText(
                      firstNormalText: "Create your ",
                      secoundBoldText: "account",
                    ),
                  ),
                  SizedBox(
                    height: heigth / 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "quis nostrud exercitation ullamco laboris nisi ut",
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heigth / 12,
                  ),
                  SizedBox(
                    height: heigth / 30,
                  ),
                  CommonTextfild(
                    textFildNameController: nameController,
                    isHintText: "Full name",
                    preffixIcon: Icons.person,
                    suffixIcon: Icons.person,
                  ),
                  SizedBox(
                    height: heigth / 50,
                  ),
                  CommonTextfild(
                    textFildNameController: emailController,
                  ),
                  SizedBox(
                    height: heigth / 50,
                  ),
                  CommonTextfild(
                    obscureText: isShow ? false : true,
                    textFildNameController: passwordController,
                    suffixIcon: Icons.lock,
                    preffixIcon: Icons.lock,
                    isHintText: "Password",
                  ),
                  SizedBox(
                    height: heigth / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CommonNormalText(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isShow = !isShow;
                            debugPrint("statement........$isShow");
                          });
                        },
                        child: isShow
                            ? const CommonNormalText(
                                isText: "Hide Password",
                              )
                            : const CommonNormalText(
                                isText: "Show Password",
                              ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: heigth / 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpNineScreen(
                            emailId: emailController.text,
                          ),
                        ),
                      );
                    },
                    child: CommonButton(
                      buttonWidth: width / 1.5,
                      isText: "Register",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
