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
            floating: true,
            snap: true,
            elevation: 25,

            // pinned: true, // pins the app bar
            title: Text("app title"),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text("My App Bar"),
              background: Image.network(
                "https://picsum.photos/400/200",
                fit: BoxFit.cover,
              ),
            ),
          ),



          // SliverAppBar(
          //   expandedHeight: 200, // Set the height of the header when expanded
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Stack(
          //       fit: StackFit.expand,
          //       children: <Widget>[
          //         // Add the background image
          //         Image.network(
          //           'https://images.unsplash.com/photo-1469474968028-56623f02e42e?q=40',
          //           fit: BoxFit.cover,
          //         ),
          //         // Add the overlay with opacity
          //         Container(color: Colors.black.withOpacity(0.3)),
          //         // Add the title with scaling and fading effect
          //         Align(
          //           alignment: Alignment.bottomLeft,
          //           child: Padding(
          //             padding: EdgeInsets.only(left: 16, bottom: 16),
          //             child: TweenAnimationBuilder<double>(
          //               tween: Tween<double>(begin: 1.0, end: 0.0),
          //               duration: Duration(milliseconds: 500),
          //               builder:
          //                   (
          //                     BuildContext context,
          //                     double value,
          //                     Widget? child,
          //                   ) {
          //                     return Transform.scale(
          //                       scale: 1 + value, // Scale factor for the title
          //                       child: Opacity(
          //                         opacity:
          //                             1 - value, // Opacity factor for the title
          //                         child: Text(
          //                           'Parallax Header',
          //                           style: TextStyle(
          //                             fontSize: 24,
          //                             fontWeight: FontWeight.bold,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       ),
          //                     );
          //                   },
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),



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
