import 'package:flutter/material.dart';
import 'package:flutter_widgets/sub_heading.dart';

class TextFieldAndFormContainer extends StatefulWidget {
  const TextFieldAndFormContainer({super.key});

  @override
  State<TextFieldAndFormContainer> createState() =>
      _TextFieldAndFormContainerState();
}

class _TextFieldAndFormContainerState extends State<TextFieldAndFormContainer> {
  final textFieldController1 = TextEditingController();
  final textFieldController2 = TextEditingController();
  final textFieldController3 = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    textFieldController1.dispose();
    textFieldController2.dispose();
    textFieldController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: const Color.fromARGB(255, 148, 164, 172),
      child: Column(
        children: [
          SubHeading("raw text field"),
          TextField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Raw Text field",
              labelText: "Textfield*",
            ),
          ),

          SubHeading("TextFormField"),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.text_fields),
              labelText: "input text field",
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "value is required";
              }
              return null;
            },
          ),

          SubHeading("Forms"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: Column(
                spacing: 12,
                children: [
                  TextFormField(
                    controller: textFieldController1,
                    decoration: InputDecoration(
                      icon: Icon(Icons.view_comfy_sharp),
                      border: OutlineInputBorder(),
                      labelText: "text form field in form 1",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "field can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: textFieldController2,
                    decoration: InputDecoration(
                      icon: Icon(Icons.view_comfy_sharp),
                      border: OutlineInputBorder(),
                      labelText: "text form field in form 2",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "field can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: textFieldController3,
                    decoration: InputDecoration(
                      icon: Icon(Icons.view_comfy_sharp),
                      border: OutlineInputBorder(),
                      labelText: "text form field in form 3",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "field can't be empty";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    
                    onPressed: () {
                      debugPrint(textFieldController1.text);
                    },
                    child: Text("submit"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
