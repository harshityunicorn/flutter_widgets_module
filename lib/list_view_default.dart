import 'package:flutter/material.dart';

class ListViewDefault extends StatelessWidget {
  const ListViewDefault({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        children: [
          Center(child: Text("STATIC list")),
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}
