import 'package:flutter/material.dart';
import 'package:group_skill_project/common_widget/common_button.dart';
import 'package:group_skill_project/common_widget/common_text.dart';
import 'package:group_skill_project/continue_email_screen.dart';
import 'common_widget/common_textfild.dart';
import 'faq_seven_screen.dart';

class SignInSixScreen extends StatefulWidget {
  const SignInSixScreen({Key? key}) : super(key: key);

  @override
  State<SignInSixScreen> createState() => _SignInSixScreenState();
}

class _SignInSixScreenState extends State<SignInSixScreen> {
  bool isShow = false;
  String password = "1234";
  bool isError = false;

  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    double text = MediaQuery.textScaleFactorOf(context);
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
              child: Stack(
                children: [
                  // SizedBox(
                  //   height: heigth / 6,
                  //   width: double.infinity,
                  //   child: Image.asset(
                  //       "assets/imagess/undraw_city_life_gnpr 1.png"),
                  // ),
                  GestureDetector(
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
                ],
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
                      firstNormalText: "Let's",
                      secoundBoldText: "Sign In",
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
                    height: heigth / 30,
                  ),
                  isError
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: double.infinity,
                            height: heigth / 15,
                            color: const Color(0xff234F68),
                            child: const Center(
                              child: Text(
                                'Your password is incorrect',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                  SizedBox(
                    height: heigth / 30,
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
                      if (passwordController.text == password) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FaqSevenScreen(),
                          ),
                        );
                      } else {
                        isError = true;
                        setState(() {});
                      }
                    },
                    child: CommonButton(
                      buttonWidth: width / 1.5,
                      isText: "Login",
                    ),
                  ),
                  SizedBox(
                    height: heigth / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: CommonContainer(
                          isImage: "assets/imagess/Google - normal.png",
                        ),
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      const Expanded(
                        child: CommonContainer(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: heigth / 20,
                  ),
                  CommonText(
                    firstNormalText: "Don't have an account? ",
                    secoundBoldText: "Register",
                    fontSize: text * 15,
                    textColor: const Color(0xff634AFD),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void passwordDailog() => showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("your Password is incurrect"),
        ),
      );
}
