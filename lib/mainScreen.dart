import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:feather_icons/feather_icons.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Text("Drawer Data")),

      appBar: AppBar(
        centerTitle: true,
        title: Text('Todo App'),
        actions: [
          Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.add)),
        ],
      ),
    );
  }
}
