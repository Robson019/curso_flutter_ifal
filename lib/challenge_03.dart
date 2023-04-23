import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 230, 238),
        appBar: AppBar(
          title: Text('Flutter: Primeiros passos'),
        ),
        body: ListView(
          children: [
            Task(50, 145, 207),
            Task(93, 26, 186),
            Task(237, 216, 78),
            Task(137, 235, 84),
          ],
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final int red;
  final int green;
  final int blue;

  const Task(this.red, this.green, this.blue, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 125,
                  child: Row(
                    children: [
                      Container(
                        color: Color.fromRGBO(widget.red, widget.green, widget.blue, 1),
                        width: 90,
                        height: 125,
                      ),
                      Container(
                        color: Color.fromRGBO(widget.blue, widget.red, widget.green, 1),
                        width: 90,
                        height: 125,
                      ),
                      Container(
                        color: Color.fromRGBO(widget.green, widget.blue, widget.red, 1),
                        width: 90,
                        height: 125,
                      ),                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}