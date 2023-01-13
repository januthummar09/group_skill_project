import 'package:flutter/material.dart';
import 'package:group_skill_project/add_location_ten_screen.dart';
import 'package:group_skill_project/common_widget/common_button.dart';
import 'package:group_skill_project/real_estate_type_frist_screen.dart';

class ChooseYourLocationScreen extends StatefulWidget {
  final String? locationName;
  const ChooseYourLocationScreen({Key? key, this.locationName})
      : super(key: key);

  @override
  State<ChooseYourLocationScreen> createState() =>
      _ChooseYourLocationScreenState();
}

class _ChooseYourLocationScreenState extends State<ChooseYourLocationScreen> {
  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);
  TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    // double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/imagess/Location - Choose Location.png",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AddLocationTenScreen(),
                            ),
                          );
                        },
                        child: CommonCustomBackButton(
                          color: bgColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heigth / 30,
                    ),
                    TextField(
                      controller: locationController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: Color(0xff234F68),
                          size: 26,
                        ),
                        // suffixIcon: Image.asset(
                        //   "assets/imagess/Mic - Active.png",
                        //   height: heigth / 50,
                        // ),
                        suffixIcon: const Icon(
                          Icons.mic_none_outlined,
                          size: 30,
                          color: Color(0xffA1A5C1),
                        ),
                        border: InputBorder.none,
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                        hintText: "Find location",
                        hintStyle: const TextStyle(
                          color: Color(0xffA1A5C1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: width / 10,
                          vertical: heigth / 33,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width / 20,
                        vertical: heigth / 50,
                      ),
                      alignment: Alignment.centerLeft,
                      height: heigth / 7,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff53587A),
                            blurRadius: 90,
                            offset: Offset(0, 20),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Location detail",
                            style: TextStyle(
                              color: Color(0xff252B5C),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 30,
                                backgroundColor: containerColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Image.asset(
                                    "assets/imagess/iconoir_pin-alt.png",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width / 20,
                              ),
                              Text("${widget.locationName}")
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: heigth / 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const RealEstateTypeFristScreen(),
                          ),
                        );
                      },
                      child: CommonButton(
                        buttonWidth: width / 1.4,
                        isText: "Choose your location",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
