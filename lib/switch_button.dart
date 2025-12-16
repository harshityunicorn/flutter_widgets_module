import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() {
    return _SwitchButtonState();
  }
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isBlack = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 200, color: isBlack ? Colors.black : Colors.grey),
        Center(
          child: Switch(
            activeColor: Colors.amber,
            // activeThumbImage: AssetImage('assets/images/image1.jpg'),
            thumbIcon: WidgetStateProperty.all(Icon(Icons.done)),
            value: isBlack,
            onChanged: (value) {
              setState(() {
                isBlack = value;
              });
            },           
          ),
        ),
      ],
    );
  }
}
