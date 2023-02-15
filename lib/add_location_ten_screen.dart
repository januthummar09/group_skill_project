import 'package:flutter/material.dart';
import 'package:group_skill_project/choose_your_location_screen.dart';
import 'package:group_skill_project/common_widget/common_text.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:group_skill_project/continue_email_screen.dart';
import 'common_widget/common_button.dart';

class AddLocationTenScreen extends StatefulWidget {
  const AddLocationTenScreen({Key? key}) : super(key: key);

  @override
  State<AddLocationTenScreen> createState() => _AddLocationTenScreenState();
}

class _AddLocationTenScreenState extends State<AddLocationTenScreen> {
  TextEditingController loginController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);

  double inetailValue = 40;
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
          child: Form(
            key: formKey,
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
                            builder: (context) => const AddLocationTenScreen(),
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
                SizedBox(
                  height: heigth / 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CommonText(
                    firstNormalText: "Add your",
                    secoundBoldText: " location ",
                  ),
                ),
                SizedBox(
                  height: heigth / 40,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CommonNormalText(
                    isText: "You can edit this later on your account setting.",
                  ),
                ),
                SizedBox(
                  height: heigth / 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    // height: heigth / 3,
                    width: double.infinity,
                    color: Colors.amber,

                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        const Image(
                          image: AssetImage(
                            "assets/imagess/Mapsicle Map.png",
                          ),
                          fit: BoxFit.contain,
                          width: double.infinity,
                        ),
                        BlurryContainer(
                          blur: 28,
                          width: double.infinity,
                          height: heigth / 15,
                          elevation: 0,
                          color: Colors.transparent,
                          padding: const EdgeInsets.all(8),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: const Center(
                            child: Text(
                              "select on map",
                              style: TextStyle(
                                color: Color(0xff252B5C),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: heigth / 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 20, vertical: heigth / 40),
                    height: heigth / 12,
                    width: double.infinity,
                    color: const Color(0xffF5F4F8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/imagess/location1.png"),
                        SizedBox(
                          width: width / 30,
                        ),
                        const CommonNormalText(
                          isText: "Location detail",
                          fontColor: Color(0xffA1A5C1),
                          fontWeight: FontWeight.normal,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 18,
                          color: Color(0xffA1A5C1),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: heigth / 20,
                // ),
                // SfSlider(
                //   min: 0.0,
                //   max: 100.0,
                //   value: inetailValue,

                //   interval: 20,

                //   // showTicks: true,
                //   // showLabels: true,
                //   // enableTooltip: false,
                //   // minorTicksPerInterval: 1,

                //   onChanged: (value) {
                //     setState(() {
                //       inetailValue = value;
                //     });
                //   },
                // ),
                // SizedBox(
                //   height: heigth / 100,
                // ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseYourLocationScreen(),
                      ),
                    );
                  },
                  child: CommonButton(
                    buttonWidth: width / 1.4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
