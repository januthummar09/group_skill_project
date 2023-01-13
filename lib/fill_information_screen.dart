import 'package:flutter/material.dart';
import 'package:group_skill_project/common_widget/common_textfild.dart';
import 'package:group_skill_project/create_account_eight_screen.dart';
import 'package:group_skill_project/payment_method_first_screen.dart';

import 'common_widget/common_button.dart';
import 'common_widget/common_text.dart';
import 'continue_email_screen.dart';

class FillInformationScreen extends StatefulWidget {
  final String? emailId;
  const FillInformationScreen({Key? key, this.emailId}) : super(key: key);

  @override
  State<FillInformationScreen> createState() => _FillInformationScreenState();
}

class _FillInformationScreenState extends State<FillInformationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobilNumberController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    mobilNumberController.dispose();
    super.dispose();
  }

  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);
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
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width / 20,
            // vertical: heigth / 40,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const PaymentMethodFirstScreen(),
                          ),
                        );
                      },
                      child: const CommonCustomBackButton(),
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
                height: heigth / 30,
              ),
              Expanded(
                child: ListView(
                  // shrinkWrap: true,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: BoldNormalBoldText(
                        firstBoldText: "Fill your ",
                        secondNormalText: "information ",
                        thriedBoldText: "\nbelow ",
                      ),
                    ),
                    SizedBox(
                      height: heigth / 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "You can edit this later on your account setting.",
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heigth / 15,
                    ),
                    Center(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: containerColor,
                            maxRadius: width / 7,
                            child: Padding(
                              padding: const EdgeInsets.all(35),
                              child: Image.asset("assets/imagess/person.png"),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: const Color(0xff234F68),
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Image.asset("assets/imagess/pen.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: heigth / 25,
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
                      textFildNameController: mobilNumberController,
                      isHintText: "mobile number",
                      preffixIcon: Icons.call,
                      suffixIcon: Icons.call,
                    ),
                    SizedBox(
                      height: heigth / 50,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width / 30,
                        ),
                        height: heigth / 11,
                        width: double.infinity,
                        color: const Color(0xff234F68),
                        child: Row(
                          children: [
                            Text(
                              "${widget.emailId}",
                              style: TextStyle(
                                color: bgColor,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 32,
                              ),
                              child: Image.asset(
                                "assets/imagess/Group2.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heigth / 30,
                    ),
                    Wrap(
                      children: [
                        Center(
                          child: CommonButton(
                            buttonWidth: width / 1.3,
                          ),
                        ),
                      ],
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
