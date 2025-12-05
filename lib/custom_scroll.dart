import 'package:flutter/material.dart';

class CustomScroll extends StatelessWidget {
  const CustomScroll({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      // width: 500,
      child: CustomScrollView(
        anchor: 0,
        // scrollDirection: Axis.horizontal,
        scrollBehavior: MaterialScrollBehavior(),
        paintOrder: SliverPaintOrder.lastIsTop,
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.note),
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("My App Bar"),
              background: Image.network(
                "https://picsum.photos/400",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: EdgeInsetsGeometry.all(12),
          //     child: Text("Heading 1"),
          //   ),
          // ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text("Item $index")),
              childCount: 20,
            ),
          ),

          // SliverGrid(
          //   delegate: SliverChildBuilderDelegate((context, index) {
          //     return Container(
          //       height: 100,
          //       color: Colors.blue[index*100],
          //     );
          //   }, childCount: 10),
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //   ),
          // ),

        ],
      ),
    );
  }
}
