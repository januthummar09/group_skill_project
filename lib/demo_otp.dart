import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';

class DemoOtp extends StatefulWidget {
  const DemoOtp({Key? key}) : super(key: key);

  @override
  State<DemoOtp> createState() => _DemoOtpState();
}

class _DemoOtpState extends State<DemoOtp> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color(0xff234F68);
    const fillColor = Color(0xffF5F4F8);
      Color bgColor=const Color(0xffFFFFFF);


    final defaultPinTheme = PinTheme(
      width: 80,
      height: 80,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: const Color(0xffF5F4F8),

        // border: Border.all(
        //   color: const Color(0xffF5F4F8),
        // ),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
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
                        return value == '2222' ? null : 'Pin is incorrect';
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
                  TextButton(
                    onPressed: () => formKey.currentState!.validate(),
                    child: const Text('Validate'),
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
