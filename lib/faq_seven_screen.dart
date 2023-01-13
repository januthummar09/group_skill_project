import 'package:flutter/material.dart';
import 'package:group_skill_project/common_widget/common_button.dart';
import 'package:group_skill_project/common_widget/common_text.dart';
import 'package:group_skill_project/common_widget/common_textfild.dart';
import 'package:group_skill_project/sign_in_six_screen.dart';

import 'add_location_ten_screen.dart';

class FaqSevenScreen extends StatefulWidget {
  const FaqSevenScreen({Key? key}) : super(key: key);

  @override
  State<FaqSevenScreen> createState() => _FaqSevenScreenState();
}

class _FaqSevenScreenState extends State<FaqSevenScreen> {
  TabController? tabController;
  List<Tab> tabList = [
    const Tab(
      text: "Buyer",
    ),
    const Tab(
      text: "Estate Agent",
    ),
  ];
  List<Widget> views = [
    const Center(child: Text('Content of Tab One')),
    const Center(child: Text('Content of Tab Two')),
    const Center(child: Text('Content of Tab Three')),
  ];

  List faq = [
    {
      "faqImage": "assets/imagess/Globe.png",
      "faqName": "Visit our website",
    },
    {
      "faqImage": "assets/imagess/Email.png",
      "faqName": "Email us",
    },
    {
      "faqImage": "assets/imagess/Document.png",
      "faqName": "Terms of service",
    }
  ];

  int index = 0;
  Color textColor = const Color(0xff53587A);
  Color containerColor = const Color(0xffF5F4F8);
  Color bgColor = const Color(0xffFFFFFF);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width / 20,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: heigth / 40,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInSixScreen(),
                          ),
                        );
                      },
                      child: const CommonCustomBackButton(),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    // padding: EdgeInsets.only(
                    //   top: heigth / 30,
                    // ),
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: BoldNormalBoldText(),
                      ),
                      SizedBox(
                        height: heigth / 40,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Find answer to your problem using this app.",
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: heigth / 25,
                      ),
                      ...faq.map(
                        (e) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: const Color(0xff234F68),
                                    maxRadius: width / 20,
                                    child: Image(
                                      image: AssetImage(e["faqImage"]),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width / 20,
                                  ),
                                  Text("${e["faqName"]}"),
                                ],
                              ),
                              faq.indexOf(e) != 2
                                  ? Divider(
                                      height: heigth / 20,
                                      thickness: 2,
                                      color: const Color(0xffD9D9D9),
                                    )
                                  : const SizedBox(),
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: heigth / 20,
                      ),
                      const CommonTextfild(
                        isHintText: "Try find “how to”",
                        preffixIcon: Icons.search,
                        suffixIcon: Icons.search,
                      ),
                      SizedBox(
                        height: heigth / 40,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: heigth / 15,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F4F8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TabBar(
                          tabs: tabList,
                          labelColor: Colors.black,
                          unselectedLabelColor: const Color(0xffA1A5C1),
                          indicator: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(50), // Creates border
                            color: const Color(0xffFFFFFF),
                          ),
                          // [
                          //   Tab(
                          //     text: 'Basic',
                          //   ),
                          //   Tab(
                          //     text: 'Advanced',
                          //   )
                          // ],
                        ),
                      ),
                      SizedBox(
                        height: heigth / 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonNormalText(
                            isText: "What is Rise Real Estate?",
                            isFontSize: text * 20,
                            fontColor: const Color(0xff252B5C),
                          ),
                          const Icon(
                            Icons.add,
                            color: Color(0xff8BC83F),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heigth / 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonNormalText(
                            isText: "Why choose buy in Rise?",
                            isFontSize: text * 20,
                            fontColor: const Color(0xff252B5C),
                          ),
                          const Icon(
                            Icons.minimize_rounded,
                            color: Color(0xff8BC83F),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heigth / 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: heigth / 5,
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F4F8),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: double.infinity,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 18,
                              ),
                            ),
                            const Center(
                              child: Text(
                                'Advanced ',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: heigth / 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonNormalText(
                            isText: "What is Safar?",
                            isFontSize: text * 20,
                            fontColor: const Color(0xff252B5C),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AddLocationTenScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.add),
                            color: const Color(0xff8BC83F),
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
      ),
    );
  }
//   Widget getPage(Tab tab){
// switch(tab.text){
//   case 'Overview': return OverView();
//   case 'Orders': return Workouts();
//  }
// }
}
