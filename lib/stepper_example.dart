import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() {
    return _StepperExample();
  }
}

class _StepperExample extends State<StepperExample> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      
      currentStep: currentIndex,
      onStepContinue: () {
        if (currentIndex <= 0) {
          setState(() {
            currentIndex++;
          });
        }
      },

      onStepCancel: () {
        if (currentIndex > 0) {
          setState(() {
            currentIndex--;
          });
        }
      },

      onStepTapped: (value) {
        setState(() {
          currentIndex = value;
        });
      },

      // controlsBuilder: (context, details) {
      //   return Row(
      //     children: [
      //       ElevatedButton(onPressed: () {}, child: Text("button")),
      //       ElevatedButton(onPressed: () {}, child: Text("button")),
      //     ],
      //   );
      // },
      steps: [
        Step(
          title: Text("First Step"),
          subtitle: Text("subtitle"),
          content: Container(
            height: 300,
            color: Colors.grey,
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your first name",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your last name",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Step(
          title: Text("Second Step"),
          isActive: currentIndex < 1,
          content: Container(
            height: 300,
            color: Colors.grey,
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your first name",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your last name",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
