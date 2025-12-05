import 'package:flutter/material.dart';

class NestedScroll extends StatelessWidget {
  const NestedScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text("nested scroll view"),
              floating: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://picsum.photos/400',
                  fit: BoxFit.fill,
                ),
              ),

              // bottom: PreferredSize(preferredSize: Size.fromHeight(200), child: Text("data")),

            ),
          ];
        },
        body: ListView.builder(
          itemCount: 10,
          
          itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("data$index"),
          );
        }),
      ),
    );
  }
}
