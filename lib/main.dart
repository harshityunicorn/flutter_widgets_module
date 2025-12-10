import 'package:flutter/material.dart';
import 'package:flutter_widgets/assets_grid.dart';
import 'package:flutter_widgets/button_events.dart';
import 'package:flutter_widgets/cached_images.dart';
import 'package:flutter_widgets/caraosel_scroll.dart';
import 'package:flutter_widgets/custom_scroll.dart';
import 'package:flutter_widgets/page_view_example.dart';
import 'package:flutter_widgets/tab_bar_example.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter_widgets/first_container.dart';
import 'package:flutter_widgets/grid_view_example.dart';
import 'package:flutter_widgets/list_view_container.dart';
import 'package:flutter_widgets/nested_scroll.dart';
import 'package:flutter_widgets/network_image_list.dart';
import 'package:flutter_widgets/second_container.dart';
import 'package:flutter_widgets/snack_bar_example.dart';
import 'package:flutter_widgets/stream_builder_example.dart';
import 'package:flutter_widgets/sub_heading.dart';
import 'package:flutter_widgets/text_field_and_form_container.dart';
import 'package:flutter_widgets/wrap_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void showToast() {
    Fluttertoast.showToast(
      msg: "Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.amber,
        //   highlightElevation: 10,
        //   child: Icon(Icons.add),

        // ),

        // custome floating action button :
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Text("Bottom modal sheet");
            });
          },

          label: Icon(Icons.add),
          backgroundColor: Colors.amber,
          extendedPadding: EdgeInsets.all(15),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

        // endDrawerEnableOpenDragGesture: false, // disable the drawer opening with swipe gesture.
        // endDrawer: Drawer(), // drawer right side of the scaffold
        drawer: Drawer(
          elevation: 10,
          surfaceTintColor: Colors.amber,
          shadowColor: Colors.black,

          child: Builder(
            builder: (context) {
              return ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("Harshit"),
                    accountEmail: Text("harshit@gmail.com"),
                    currentAccountPicture: Image.network(
                      'https://img.freepik.com/free-photo/abstract-flowing-neon-wave-background_53876-101942.jpg',
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('assets/images/image1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // DrawerHeader(
                  //   decoration: BoxDecoration(color: Colors.lightBlue),
                  //   child: Text("Drawer"),
                  // ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text("Profile"),
                  ),
                ],
              );
            },
          ),
        ),

        // BottomNavigation Bar :

        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Badge(label: Text("5"), child: Icon(Icons.home)),
        //       label: "home",
        //       tooltip: "home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.face),
        //       label: "profile",
        //       tooltip: "profile",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: "setting",
        //       tooltip: "setting",
        //     ),
        //   ],
        //   backgroundColor: Colors.white70,
        //   currentIndex: 1,
        //   elevation: 5,

        //   selectedItemColor: Colors.amber,
        //   type: BottomNavigationBarType.shifting,
        //   unselectedItemColor: Colors.black,
        //   showUnselectedLabels: true,
        //   onTap: (value) {
        //     print(value);
        //   },
        // ),

        // Navigation bar :
        bottomNavigationBar: NavigationBar(
          // selectedIndex: 1,
          onDestinationSelected: (value) {
            print(value);
          },

          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              label: "Profile",
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ],
        ),

        resizeToAvoidBottomInset: true,
        appBar: AppBar(title: Text("Flutter widgets")),
        body: RefreshIndicator(
          // displacement: 100, // refresh icon displacement from the top.
          elevation: 20,

          // semanticsLabel: "LABEL" ,
          notificationPredicate: (notification) {
            return notification.depth == 0;
            //will only refresh for the scroll views with depth value 0,
          },
          onRefresh: () {
            print("refreshing...");
            return Future.delayed(Duration(seconds: 3));
          },
          backgroundColor: Colors.lightGreen,
          color: Colors.white,
          child: ListView(
            children: [
              SubHeading("Container, Text and Card Widgets"),
              FirstContainer(),
              SecondContainer(),
              SubHeading("TextForm Field, TextField & Form Widgets"),
              TextFieldAndFormContainer(),
              SubHeading("List view"),
              ListViewContainer(),
              SubHeading("Grid views"),
              GridViewExample(),
              SubHeading("Wraps : "),
              WrapExample(),
              SubHeading("Custome scroll view"),
              CustomScroll(),
              SubHeading("Nested scroll view"),
              NestedScroll(),
              SubHeading("Nested scroll tab bar"),
              NestedScrollTabBar(),
              SubHeading("Carousel scroll view"),
              CaraoselScroll(),
              SubHeading("Asset images"),
              AssetsGrid(),
              SubHeading("Network images"),
              NetworkImageList(),
              SubHeading("Cached network images"),
              CachedImages(),
              SubHeading("Stream builder"),
              StreamBuilderExample(),
              SubHeading("Gesture detectors and Buttons"),
              ButtonEvents(),
              SubHeading("SnackBar, Toast and Visibility"),
              SnackBarExample(),
              SubHeading("Page view"),
              PageViewExample(),
              SubHeading("Tab Bar"),
              TabBarExample(),
            ],
          ),
        ),
      ),
    );
  }
}
