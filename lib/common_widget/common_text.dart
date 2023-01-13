import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String? firstNormalText;
  final String? secoundBoldText;
  final double? fontSize;
  final Color? textColor;
  const CommonText({
    Key? key,
    this.firstNormalText,
    this.secoundBoldText,
    this.fontSize,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstNormalText ?? "Ready to ",
        style: TextStyle(
          color: textColor ?? const Color(0xff252B5C),
          fontSize: fontSize ?? MediaQuery.textScaleFactorOf(context) * 25,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: secoundBoldText ?? "explore?",
            style: TextStyle(
                color: textColor ?? const Color(0xff1F4C6B),
                fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}

class BoldNormalBoldText extends StatelessWidget {
  final String? firstBoldText;
  final String? secondNormalText;
  final String? thriedBoldText;
  final Color? textColor;
  final double? fontSize;
  const BoldNormalBoldText(
      {super.key,
      this.firstBoldText,
      this.textColor,
      this.secondNormalText,
      this.fontSize,
      this.thriedBoldText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstBoldText ?? "FAQ",
        style: TextStyle(
            color: textColor ?? const Color(0xff1F4C6B),
            fontSize: fontSize ?? MediaQuery.textScaleFactorOf(context) * 25,
            fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: secondNormalText ?? " &",
            style: TextStyle(
                color: textColor ?? const Color(0xff252B5C),
                fontSize:
                    fontSize ?? MediaQuery.textScaleFactorOf(context) * 25,
                fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: thriedBoldText ?? " Support",
            style: TextStyle(
              color: textColor ?? const Color(0xff1F4C6B),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CommonNormalText extends StatelessWidget {
  final String? isText;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final double? isFontSize;
  const CommonNormalText(
      {super.key,
      this.isText,
      this.fontWeight,
      this.fontColor,
      this.isFontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      isText ?? "Forgot password?",
      style: TextStyle(
        color: fontColor ?? const Color(0xff1F4C6B),
        fontWeight: fontWeight ?? FontWeight.w600,
        fontSize: isFontSize ?? isFontSize,
      ),
    );
  }
}
