import 'package:flutter/material.dart';

class ListSeparator extends StatelessWidget {
  ListSeparator(this.items, {super.key});
  List<String> items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text(items[index]),
            subtitle: Text("dummy text"),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: items.length,
      ),
    );
  }
}
