import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  PageViewExample({super.key});

  List<Color> pageColors = [
    Colors.amber,
    Colors.blue,
    Colors.red,
    Colors.teal,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: PageView.builder(
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        
        // physics: NeverScrollableScrollPhysics(),
        // controller: PageController(initialPage: 1),

        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(color: pageColors[index]),
            child: Center(child: Text("Page $index")),
          );
        },
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     height: 600,
  //     child: PageView(
  //       allowImplicitScrolling: true,
  //       physics: BouncingScrollPhysics(),
  //       pageSnapping: true,
  //       // scrollDirection: Axis.vertical, // changes the direction of the scroll
  //       children: [
  //         Center(child: Text("Page 1")),
  //         Center(child: Text("Page 2")),
  //         Center(child: Text("Page 3")),
  //       ],
  //     ),
  //   );
  // }
}
