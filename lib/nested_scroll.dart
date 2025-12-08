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
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://picsum.photos/400/300',
                  fit: BoxFit.fill,
                ),
              ),

              // bottom: PreferredSize(preferredSize: Size.fromHeight(200), child: Text("data")),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 10,

          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text("data$index"),
            );
          },
        ),
      ),
    );
  }
}

class NestedScrollTabBar extends StatelessWidget {
  const NestedScrollTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 500,
      child: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text("Tab Scroll bar"),
                automaticallyImplyLeading: false,
                expandedHeight: 200,
                pinned: true,
                
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(color: Colors.lime),
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.wb_iridescent_outlined)),
                    Tab(icon: Icon(Icons.airplay)),
                    Tab(icon: Icon(Icons.battery_6_bar_outlined)),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 10,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.airplanemode_inactive_sharp),
                    title: Text("item $index"),
                  );
                },
              ),
              ListView.builder(
              
                itemCount: 10,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.airplanemode_inactive_sharp),
                    title: Text("tab $index"),
                  );
                },
              ),
              ListView.builder(
                itemCount: 10,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.airplanemode_inactive_sharp),
                    title: Text("new tab $index"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
