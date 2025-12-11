import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  ListBuilder(this.items, {super.key});

  final _scrollController = ScrollController(debugLabel: "scroll");

  List<String> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        // reverse: true,
        // primary: true,
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.all(12),
        itemCount: items.length,

        itemBuilder: (context, index) {
          return ListTile(
            trailing: Icon(Icons.done),
            leading: CircleAvatar(child: Icon(Icons.person)),
            dense: true,
            isThreeLine: false,
            selected: false,
            selectedColor: const Color.fromARGB(255, 46, 167, 56),
            title: Text(items[index]),
            subtitle: Text("dummy text"),
          );
        },
      ),
    );
  }
}
