import 'package:flutter/material.dart';

import 'package:flutter_widgets/first_container.dart';
import 'package:flutter_widgets/second_container.dart';
import 'package:flutter_widgets/sub_heading.dart';
import 'package:flutter_widgets/text_field_and_form_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(title: Text("Flutter widgets")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SubHeading("Container, Text and Card Widgets"),
              FirstContainer(),
              SecondContainer(),
              SubHeading("TextForm Field, TextField & Form Widgets"),
              TextFieldAndFormContainer()
            ],
          ),
        ),
      ),
    );
  }
}
