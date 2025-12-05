import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/sub_heading.dart';

class TextFieldAndFormContainer extends StatefulWidget {
  const TextFieldAndFormContainer({super.key});

  @override
  State<TextFieldAndFormContainer> createState() =>
      _TextFieldAndFormContainerState();
}

class _TextFieldAndFormContainerState extends State<TextFieldAndFormContainer> {

   String? textField1;
   String? textField2;
   String? textField3;

   String? errorText;

  final textFieldController1 = TextEditingController();
  final textFieldController2 = TextEditingController();
  final textFieldController3 = TextEditingController();

  final textFieldFocus1 = FocusNode();
  final textFieldFocus2 = FocusNode();
  final textFieldFocus3 = FocusNode();

  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    textFieldController1.dispose();
    textFieldController2.dispose();
    textFieldController3.dispose();
    textFieldFocus1.dispose();
    textFieldFocus2.dispose();
    textFieldFocus3.dispose();
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
              helperText: "helper text",
            ),
            autocorrect: true,
            
            autofillHints: ["Harshit", "Suresh", "yunicron"],
            // autofocus: true,  // focuses when the page loads.
            onChanged: (value) {
              print("input 1 value changed to : $value");
            },

            // onTap: () {
            //   print("text 1 field taped");
            // },
          ),

          SubHeading("TextFormField"),
          TextFormField(
            
            decoration:  InputDecoration(
              icon: Icon(Icons.text_fields),
              labelText: "input text field",
              border: OutlineInputBorder(),
              errorText: errorText
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                setState(() {
                  errorText="value is required";
                });
                return "value is required";
              }
              return null;
            },
            textAlign: TextAlign.center,
            keyboardType: TextInputType.twitter,
          ),

          SubHeading("Forms"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                spacing: 12,
                children: [
                  TextFormField(
                    focusNode: textFieldFocus1,
                    onFieldSubmitted: (value) =>
                        FocusScope.of(context).requestFocus(textFieldFocus2),
                    enableInteractiveSelection: false,
                    textInputAction: TextInputAction.newline,
                    controller: textFieldController1,
                    
                    // maxLines: 5,
                    // maxLength: 10,
                    
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(),
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
                    
                    focusNode: textFieldFocus2,
                    onFieldSubmitted: (value) =>
                        FocusScope.of(context).requestFocus(textFieldFocus3),
                    controller: textFieldController2,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                    focusNode: textFieldFocus3,
                    onFieldSubmitted: (value) =>
                        FocusScope.of(context).unfocus(),
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
                      if(_formKey.currentState!.validate()){
                        textField1 = textFieldController1.text;
                        textField2 = textFieldController2.text;
                        textField3 = textFieldController3.text;
                        print("form validated $textField1");
                      }else{
                        print("invalid form fields");
                      }
                      debugPrint(textFieldController1.text);
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("button pressed")));
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
