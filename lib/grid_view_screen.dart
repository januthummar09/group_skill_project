import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _NewState();
}

class _NewState extends State<GridViewScreen> {
  Set active = {0, 1};
  bool isIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: GridView.builder(
                itemCount: 15,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 2,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    selectedItems(index);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    color: active.contains(index) ? Colors.cyan : Colors.green,
                    child: Text("$index"),
                  ),
                ),
              ),
            ),
            // Expanded(/*
            //   child: GridView.count(
            //     crossAxisCount: 3,
            //     crossAxisSpacing: 3,
            //     mainAxisSpacing: 2,
            //     children: [
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.yellow,
            //       ),
            //     ],
            //   ),
            //  */),
            Container(),
          ],
        ),
      ),
    );
  }

  void selectedItems( index) {
    setState(() {});
    active.contains(index) ? active.remove(index) : active.add(index);
    debugPrint("value..........$active");
  }
}
