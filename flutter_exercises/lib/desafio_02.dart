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
        appBar: AppBar(
          title: Text('IFAL: Curso de Flutter'),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Text('Conhecendo Flutter'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_drop_up)
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 40,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Text('Conhecendo Flutter'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_drop_up)
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 40,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Text('Conhecendo Flutter'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_drop_up)
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 40,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}
        ),
      ),
    );
  }
}