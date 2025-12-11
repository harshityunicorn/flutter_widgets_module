import 'package:flutter/material.dart';

class AnimationContainerExample extends StatefulWidget {
  const AnimationContainerExample({super.key});
  @override
  State<AnimationContainerExample> createState() {
    return _AnimationContainerExampleState();
  }
}

class _AnimationContainerExampleState extends State<AnimationContainerExample>
    with SingleTickerProviderStateMixin {
  bool isBig = false;
  bool isLeft = true;
  bool isVisible = true;
  int count = 0;

  late AnimationController controller;
  late Animation<double> scaleAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    scaleAnimation = Tween(
      begin: 0.6,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text("Animated text");
  }
}
