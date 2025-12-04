import 'package:flutter/material.dart';
import 'package:flutter_widgets/list_builder.dart';
import 'package:flutter_widgets/list_separator.dart';
import 'package:flutter_widgets/list_view_default.dart';
import 'package:flutter_widgets/sub_heading.dart';

class ListViewContainer extends StatefulWidget {
  const ListViewContainer({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ListViewContainerState();
  }
}

class _ListViewContainerState extends State<ListViewContainer> {
  List<String> items = List.generate(20, (index) {
    return 'Dummy List $index';
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          ListViewDefault(),
          SubHeading("list with list builder"),
          ListBuilder(items),
          SubHeading("List with separator"),
          ListSeparator(items)
        ],
      ),
    );
  }
}
