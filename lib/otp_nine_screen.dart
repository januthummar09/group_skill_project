import 'package:flutter/material.dart';
import 'package:group_skill_project/create_account_eight_screen.dart';

import 'add_location_ten_screen.dart';
import 'common_widget/common_button.dart';
import 'common_widget/common_text.dart';
import 'package:pinput/pinput.dart';

class OtpNineScreen extends StatefulWidget {
  final String? emailId;
  const OtpNineScreen({Key? key, this.emailId}) : super(key: key);

  @override
  State<OtpNineScreen> createState() => _OtpNineScreenState();
}

class _OtpNineScreenState extends State<OtpNineScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
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
    double text = MediaQuery.textScaleFactorOf(context);
    const focusedBorderColor = Color(0xff234F68);
    const fillColor = Color(0xffF5F4F8);

    final defaultPinTheme = PinTheme(
      width: 80,
      height: 80,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: const Color(0xffF5F4F8),
        // color:Colors.yellow,

        // border: Border.all(
        //   color: const Color(0xffF5F4F8),
        // ),
        borderRadius: BorderRadius.circular(20),
      ),
    );

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
                      builder: (context) => const CreateAccountEightScreen(),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    height: heigth / 60,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${widget.emailId}",
                      style: const TextStyle(
                        color: Color(0xff252B5C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heigth / 8,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Directionality(
                          // Specify direction if desired
                          textDirection: TextDirection.ltr,
                          child: Pinput(
                            controller: pinController,
                            focusNode: focusNode,
                            androidSmsAutofillMethod:
                                AndroidSmsAutofillMethod.smsUserConsentApi,
                            listenForMultipleSmsOnAndroid: true,
                            defaultPinTheme: defaultPinTheme,
                            validator: (value) {
                              return value == '2222'
                                  ? null
                                  : 'Pin is incorrect';
                            },
                            // onClipboardFound: (value) {
                            //   debugPrint('onClipboardFound: $value');
                            //   pinController.setText(value);
                            // },
                            hapticFeedbackType: HapticFeedbackType.lightImpact,
                            onCompleted: (pin) {
                              debugPrint('onCompleted: $pin');
                            },
                            onChanged: (value) {
                              debugPrint('onChanged: $value');
                            },
                            cursor: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                // Container(
                                //   margin: const EdgeInsets.only(bottom: 9),
                                //   width: 22,
                                //   height: 1,
                                //   color: focusedBorderColor,
                                // ),
                              ],
                            ),
                            focusedPinTheme: defaultPinTheme.copyWith(
                              decoration: defaultPinTheme.decoration!.copyWith(
                                borderRadius: BorderRadius.circular(19),
                                border: Border.all(
                                  color: focusedBorderColor,
                                ),
                              ),
                            ),
                            submittedPinTheme: defaultPinTheme.copyWith(
                              decoration: defaultPinTheme.decoration!.copyWith(
                                color: fillColor,
                                borderRadius: BorderRadius.circular(19),
                                border: Border.all(color: focusedBorderColor),
                              ),
                            ),
                            errorPinTheme: defaultPinTheme.copyBorderWith(
                              border: Border.all(color: Colors.redAccent),
                            ),
                          ),
                        ),
                        // TextButton(
                        //   onPressed: () => formKey.currentState!.validate(),
                        //   child: const Text('Validate'),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: heigth / 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddLocationTenScreen(),
                          ),
                        );
                      } else {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: heigth / 7,
                                width: double.infinity,
                                color: const Color(0xffF5F4F8),
                                child: Center(
                                  child: Text(
                                    "Your otp is incrrect",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: text * 20,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        height: heigth / 18,
                        width: width / 4.5,
                        color: const Color(0xffF5F4F8),
                        // color: const Color(0xffF5F4F8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Image(
                              image: AssetImage("assets/imagess/Timer.png"),
                            ),
                            Text("00.21"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heigth / 40,
                  ),
                  CommonText(
                    firstNormalText: "Didn't receive the OTP? ",
                    secoundBoldText: "Resend OTP",
                    fontSize: text * 15,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
