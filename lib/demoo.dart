import 'package:flutter/material.dart';

class Demoo extends StatefulWidget {
  const Demoo({Key? key}) : super(key: key);

  @override
  State<Demoo> createState() => _DemooState();
}

class _DemooState extends State<Demoo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String email = "";
  String pass = "";
  bool isPassword = false;
  bool emailID = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: ListView(
                children: [
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  TextField(
                    controller: nameController,
                    onTap: () {
                      setState(() {
                        emailID = true;
                        // // email = '';
                        // email = nameController.text;
                        // if (email.isEmpty) {
                        //   emailID = false;
                        //   //email = false.toString();
                        // } else {
                        //   emailID = true;
                        // }
                        // debugPrint("statement....$email");
                      });
                    },
                    decoration: InputDecoration(
                        suffixIcon:
                            emailID ? const Icon(Icons.add) : const SizedBox(),
                        prefixIcon:
                            emailID ? const SizedBox() : const Icon(Icons.add)),
                  ),
                  TextField(
                    controller: passController,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Button"),
            ),
          ),
        ],
      ),
    );
  }
}
