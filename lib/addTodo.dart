import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Addtodo extends StatefulWidget {
  void Function({required String todoText}) addTodo;

  Addtodo({super.key, required this.addTodo});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  TextEditingController todoText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Add todo:"),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            hintText: "write your todo here...",
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print(todoText.text);
            widget.addTodo(todoText: todoText.text);
            todoText.text = "";
          },
          child: Text("Add"),
        ),
      ],
    );
  }
}
