import 'package:flutter/material.dart';
import 'package:flutter_widgets/sub_heading.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SliderExample();
  }
}

class _SliderExample extends State<SliderExample> {
  double firstSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          max: 100,
          value: firstSliderValue,
          divisions: 100,
          
          secondaryTrackValue: 50,
          label: firstSliderValue.round().toString(),
          year2023: true,
          allowedInteraction: SliderInteraction.slideOnly,
          onChanged: (value) {
            print(value);
            setState(() {
              firstSliderValue = value;
            });
          },
        ),

        SubHeading("Popup Menu Button"), 

      ],
    );
  }
}
