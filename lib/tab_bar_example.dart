import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});
  @override
  State<TabBarExample> createState() {
    return _TabBarExampleState();
  }
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            dividerColor: Colors.black,
            labelColor: Colors.amber,
            indicatorColor: Colors.amber,
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home_outlined)),
              Tab(text: "Home", icon: Icon(Icons.home_outlined)),
              Tab(text: "Home", icon: Icon(Icons.home_outlined)),
            ],
          ),

          SizedBox(
            height: 400,
            child: TabBarView(
              children: [
                Center(child: Text("child 1")),
                Center(child: Text("child 2")),
                Center(child: Text("child 3")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
