import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            isPassword ? const Text("data") : const Icon(Icons.ac_unit),
            InkWell(
              onTap: () {
                setState(() {
                  isPassword = !isPassword;
                });
              },
              child: isPassword ? const Icon(Icons.add) : const Icon(Icons.abc),
            ),
            const TextField(
              keyboardType: TextInputType.multiline,
            ),
            // const TextField(),
            const TextField(),
            const TextField(),
            const TextField(),
            // const TextField(),
            // const TextField(),
            const TextField(),
            const TextField(),
            // const TextField(),
            // const TextField(),
            // const TextField(),
          ],
        ),
      ),
    );
  }
}
