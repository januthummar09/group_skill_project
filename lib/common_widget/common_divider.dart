import 'package:flutter/material.dart';
import 'package:group_skill_project/common_widget/common_text.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    height: 10,
                    color: Color(0xffECEDF3),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: CommonNormalText(
                    isText: "OR",
                    isFontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    height: 2,
                    color: Color(0xffECEDF3),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
