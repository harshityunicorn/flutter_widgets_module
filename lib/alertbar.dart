import 'package:flutter/material.dart';

class Alertbar extends StatelessWidget {
  const Alertbar({super.key});
  @override
  Widget build(BuildContext context) {
    void handleShowModalBottomSheet() async {
      await showModalBottomSheet(
        showDragHandle: true,
        context: context,
        sheetAnimationStyle: AnimationStyle(
          // curve: CatmullRomCurve.precompute([
          //   Offset(0.2, 0.3),
          //   Offset(0.4, 0.8),
          // ]),
          reverseDuration: Duration(milliseconds: 600),
          duration: Duration(seconds: 1),
        ),
        barrierColor: Colors.transparent, // color behind the bottom sheet
        backgroundColor: const Color.fromARGB(255, 207, 204, 204),
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadiusGeometry.all(Radius.elliptical(15, 10)),
        // ),
        barrierLabel: "Barrier label",
        useSafeArea: true,
        builder: (context) {
          return Container(
            height: 200,
            // color: Colors.amber,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('Modal BottomSheet'),
                  ElevatedButton(
                    child: const Text('Close BottomSheet'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    void showAlertDialogue() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: Icon(Icons.safety_check),
            content: Text("Are you sure!"),
            title: Text("Alert!!!"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Action"),
              ),
            ],
          );
        },
      );
    }

    // TODO: implement build
    return Column(
      children: [
        ElevatedButton(
          onPressed: showAlertDialogue,
          child: Text("Show Alert dialogue"),
        ),
        ElevatedButton(
          onPressed: handleShowModalBottomSheet,
          child: Text("Show modal bottom sheet"),
        ),
      ],
    );
  }
}
