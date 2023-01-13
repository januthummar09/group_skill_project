import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final double? buttonHeight;
  final double? buttonWidth;
  final String? isText;

  const CommonButton({
    Key? key,
    this.buttonHeight,
    this.buttonWidth,
    this.isText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight ?? MediaQuery.of(context).size.height / 16,
      width: buttonWidth ?? MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff8BC83F),
      ),
      child: Center(


        child: Text(
          isText ?? "Next",
          style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.textScaleFactorOf(context) *16),
        ),
      ),
    );
  }
}

class CommonSkipButton extends StatelessWidget {
  final Color? isColor;
  const CommonSkipButton({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 22,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          MediaQuery.of(context).size.height / 10,
        ),
        color: isColor ?? const Color(0xffDFDFDF),
      ),
      child: const Text(
        "Skip",
      ),
    );
  }
}

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 17,
        width: MediaQuery.of(context).size.height / 17,
        color: const Color(0xffFFFFFF),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class CommonImage extends StatelessWidget {
  final String? isImage;
  const CommonImage({super.key, this.isImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        MediaQuery.of(context).size.height * 0.03,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4.5,
        // width: MediaQuery.of(context).size.height / 4.8,
        child: Image(
          image: AssetImage(isImage ?? "assets/imagess/Rectangle 8.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CommonButtonWithIcon extends StatelessWidget {
  final double? buttonHeight;
  final double? buttonWidth;
  final String? isText;
  const CommonButtonWithIcon(
      {super.key, this.buttonHeight, this.buttonWidth, this.isText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight ?? MediaQuery.of(context).size.height / 14,
      width: buttonWidth ?? MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff8BC83F),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.email_outlined,
              color: Color(0xffFFFFFF),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 40,
            ),
            Text(
              isText ?? "Continue with Email",
              style: TextStyle(
                color: const Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.textScaleFactorOf(context) * 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonContainer extends StatelessWidget {
  final String? isImage;
  const CommonContainer({super.key, this.isImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        MediaQuery.of(context).size.width / 15,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width / 2.5,
        color: const Color(0xffF5F4F8),
        child: Image(
          image: AssetImage(isImage ?? "assets/imagess/Facebook - normal.png"),
        ),
      ),
    );
  }
}

class CommonCustomBackButton extends StatelessWidget {
  final Color? color;
  const CommonCustomBackButton({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 25,
      foregroundColor: const Color(0xff252B5C),
      backgroundColor: color ?? const Color(0xffF5F4F8),
      child: const Icon(
        Icons.arrow_back_ios_new,
      ),
    );
  }
}
// ClipOval(
//       child: Container(
//         height: MediaQuery.of(context).size.height / 15,
//         width: MediaQuery.of(context).size.height / 15,
//         color: color ?? const Color(0xffF5F4F8),
//         child: const Center(
//           child: Icon(Icons.arrow_back_ios_new),
//         ),
//       ),
//     );
