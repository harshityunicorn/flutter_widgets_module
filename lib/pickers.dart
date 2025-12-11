import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class Pickers extends StatefulWidget {
  const Pickers({super.key});
  @override
  State<Pickers> createState() {
    // TODO: implement createState
    return _PickersState();
  }
}

class _PickersState extends State<Pickers> {
  XFile? image;

  void handlePickImage() async {
    var imagePicker = ImagePicker();

    // to pick the images from the gallary or camera.

    final XFile? result = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );

    // to pick the media files
    // final XFile? result = await imagePicker.pickMedia();

    // to pick the video files from the gallary or camera.
    // final XFile? result = await imagePicker.pickVideo(
    //   source: ImageSource.gallery,
    //   // preferredCameraDevice: CameraDevice.front,
    // );

    if (result != null) {
      final directory = await getApplicationDocumentsDirectory();
      print(directory);
      final String newPath =
          '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.png';

      print(newPath);

      setState(() {
        image = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2027),
              initialDate: DateTime.now(),
              barrierColor: Colors.black45,
              confirmText: "Pick date",
              currentDate: DateTime.now(),
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(
                      primary: Colors.brown,
                      onPrimary: const Color.fromARGB(255, 204, 193, 193),
                      onSurface: Colors.black,
                    ),
                  ),
                  child: child!,
                );
              },
            ).then((value) {
              // showDatePicker returns a Future (promise) that can be accessed using then block or using async await keywords
              print(value);
            });
          },
          child: Text("pick Date"),
        ),

        ElevatedButton(
          onPressed: () {
            showDateRangePicker(
              context: context,
              firstDate: DateTime(2017),
              lastDate: DateTime(2026),
            ).then((value) {
              print(value);
            });
          },
          child: Text("pick Date range"),
        ),

        ElevatedButton(
          onPressed: () {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            ).then((value) {
              // showTimePicker returns a Future (promise) that can be accessed using then block or async await keywords.
              print(value!.format(context));
            });
          },
          child: Text("pick Time"),
        ),
        ElevatedButton(onPressed: handlePickImage, child: Text("pick Image")),
        image == null
            ? Text("no image selected")
            : Image.file(File(image!.path), width: 200, height: 200),
      ],
    );
  }
}
