import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  ListBuilder(this.items, {super.key});

  final _scrollController = ScrollController(debugLabel: "scroll",);
  
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
            leading: CircleAvatar(),
            title: Text(items[index]),
            subtitle: Text("dummy text"),
            
          );
        },
      ),
    );
  }
}
