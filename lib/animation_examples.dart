import 'package:flutter/material.dart';
import 'package:flutter_widgets/sub_heading.dart';

class AnimationExamples extends StatefulWidget {
  const AnimationExamples({super.key});

  @override
  State<AnimationExamples> createState() {
    return _AnimationExamplesState();
  }
}

class _AnimationExamplesState extends State<AnimationExamples> {
  bool isExpanded = false;
  bool opacityAnimation = false;
  bool positionAnimation = false;
  bool crossFadeAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        SubHeading("Animation container"),
        Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: isExpanded ? 120 : 100,
            height: isExpanded ? 120 : 100,
            color: isExpanded ? Colors.amber : Colors.blue,
            curve: Curves.easeOut,
            child: Center(
              child: Text("Animation container", textAlign: TextAlign.center),
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text("Animate Container"),
          ),
        ),

        Center(
          child: AnimatedOpacity(
            opacity: opacityAnimation ? 1 : 0,
            duration: Duration(seconds: 1),
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.tealAccent,
              ),
            ),
          ),
        ),

        Center(
          child: ElevatedButton(
            onPressed: () => setState(() {
              opacityAnimation = !opacityAnimation;
            }),
            child: Text("Animate opacity"),
          ),
        ),

        Center(
          child: Container(
            height: 150,
            width: 200,
            child: Stack(
              children: [
                AnimatedPositioned(
                  left: positionAnimation ? 100 : 10,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  child: Container(height: 100, width: 100, color: Colors.lime),
                ),
              ],
            ),
          ),
        ),

        Center(
          child: ElevatedButton(
            onPressed: () => setState(() {
              positionAnimation = !positionAnimation;
            }),
            child: Text("Position animate"),
          ),
        ),

        Center(
          child: AnimatedCrossFade(
            firstChild: Container(height: 100, width: 100, color: Colors.lime),
            secondChild: Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),
            crossFadeState: crossFadeAnimation
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
        ),

        Center(
          child: ElevatedButton(
            onPressed: () => setState(() {
              crossFadeAnimation = !crossFadeAnimation;
            }),
            child: Text("Cross fade animation"),
          ),
        ),
      ],
    );
  }
}
