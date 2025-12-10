import 'package:flutter/material.dart';
import 'package:flutter_widgets/sub_heading.dart';

class ButtonEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Column(
        children: [
          SubHeading("Text Button"),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                backgroundColor: Colors.teal,
                overlayColor: const Color.fromARGB(
                  255,
                  97,
                  20,
                  110,
                ).withOpacity(0.5),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,

                shape: BeveledRectangleBorder(),

                // shape: BeveledRectangleBorder(
                //   side: BorderSide(color: Colors.black),
                //   borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                // ),
                // backgroundBuilder: (context, states, child) {
                //   final isPressed = states.contains(WidgetState.pressed);

                //   return AnimatedContainer(
                //     duration: Duration(milliseconds: 150),
                //     decoration: BoxDecoration(
                //       color: isPressed ? Colors.blue.shade900 : Colors.blue,
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child: child, // important
                //   );
                // },
              ),
              onPressed: () {
                print("text button pressed");
              },
              child: Text("Text button"),
            ),
          ),

          SubHeading("Elevated Button"),
          Center(
            child: ElevatedButton(
              onPressed: () => print("elevated btn pressed"),
              child: Text("ELEVATED BUTTON"),
            ),
          ),

          SubHeading("Icon button"),
          Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.reddit),
              iconSize: 70,
              // isSelected: true, // selected stylings will be applied if set true
              selectedIcon: Icon(Icons.analytics),
              // splashColor: Colors.red,
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 218, 194, 193),
                ),
              ),
              visualDensity: VisualDensity.compact,
            ),
          ),
          SubHeading("Inkwell"),
          Center(
            child: InkWell(
              onTap: () => print("single tap"),
              onDoubleTap: () => print("Double tap"),
              onLongPress: () => print("Long pressed"),
              onTapUp: (details) => print("Taped up"),
              child: Card(
                margin: EdgeInsets.all(16),
                child: ListTile(
                  title: Text("This tile is touchable"),
                  leading: Icon(Icons.linked_camera_rounded),
                ),
              ),
            ),
          ),
          SubHeading("Special purpose Buttons"),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BackButton(),
                CloseButton(),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return [PopupMenuItem(child: Text("popup menu item 1"))];
                  },
                ),
                DropdownButton(
                  value: 'item1',
                  items: [
                    DropdownMenuItem(value: 'item1', child: Text("item 1")),
                    DropdownMenuItem(value: 'item2', child: Text("item 2")),
                    DropdownMenuItem(value: 'item3', child: Text("item 2")),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
          ),

          SubHeading("Gesture Detector"),

          Center(
            child: GestureDetector(
              onTap: () => print("Single tap inside gesture controller"),
              onDoubleTap: () => print("Double tap inside gesture controller"),
              onLongPress: () => print("Long press on Gesture detector"),
              // onScaleStart: (details) =>
              //     print("Scalling started in gesture controller"),
              onHorizontalDragStart: (details) => print("Horizontal drag"),
              onVerticalDragStart: (details) => print("vertival drag"),
              child: Card(
                child: Container(
                  height: 150,
                  child: Center(child: Text("Gesture Detector")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
