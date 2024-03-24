import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        backgroundColor: Colors.yellow[200],
        content: Container(
          height: 200,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  cursorColor: Colors.yellow[800],
                  textAlignVertical:
                      TextAlignVertical.top, // Align text to the top
                  maxLines: 4,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.yellow[800] ?? Colors.yellow),
                      ),
                      hintText: "Add a new task",
                      // contentPadding: EdgeInsets.symmetric(vertical: 50.0),
                      focusColor: Colors.yellow[800]),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  MyButton(text: "Save", onPressed: onSave),
                  const SizedBox(width: 8),
                  MyButton(text: "Cancel", onPressed: onCancel),
                ])
              ]),
        ));
  }
}
