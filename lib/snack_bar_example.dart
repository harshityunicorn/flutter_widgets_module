import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SnackBarExample extends StatelessWidget {
  SnackBarExample({super.key});

  final snackBar = SnackBar(
    content: Text("Snack bar"),
    duration: Duration(seconds: 2),
    shape: BeveledRectangleBorder(),
    showCloseIcon: true,
    // behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      label: 'okay',
      onPressed: () {
        print("action button pressed in snackbar");
      },
    ),
  );

  void handleToastShow() {
    Fluttertoast.showToast(
      msg: "Toast is here...",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    void handleButtonPress() {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: handleButtonPress,
              child: Text("Show SnackBar"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: handleToastShow,
              child: Text("Show toast"),
            ),
          ),
          Center(
            child: Visibility(
              visible: true, // child will not be visible if set to false;

              // maintainState: true,
              // maintainAnimation: true,
              replacement: Text("not visible"),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("visibility"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
