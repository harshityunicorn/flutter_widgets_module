import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 18,
        // runAlignment: ,
        runSpacing: 20,
        direction: Axis.horizontal,
        // alignment: WrapAlignment.start,
        
        crossAxisAlignment: WrapCrossAlignment.end,
        children: [
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
          Chip(label: Text("label"), avatar: CircleAvatar()),
        ],
      ),
    );
  }
}
