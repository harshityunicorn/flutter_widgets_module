import 'package:flutter/material.dart';

class ButtonEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundBuilder: (context, states, child) {
                  final isPressed = states.contains(WidgetState.pressed);

                  return AnimatedContainer(
                    duration: Duration(milliseconds: 150),
                    decoration: BoxDecoration(
                      color: isPressed ? Colors.blue.shade900 : Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: child, // important
                  );
                },
              ),
              onPressed: () {
                print("text button pressed");
              },
              child: Text("Text button"),
            ),
          ),
        ],
      ),
    );
  }
}
