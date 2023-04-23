import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget> [
            Card(
                child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('100.0'),
                subtitle: Text('100.0'),
                textColor: Colors.deepOrange [200],
              ),
            ),
            Card(
                child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('200.0'),
                subtitle: Text('1000.0'),
                textColor: Colors.deepOrange [200],
              ),
            ),
          ],
        ),
        appBar: AppBar(
          title: Text('Transferências', style: TextStyle(color: Colors.deepOrange)),
          backgroundColor: Colors.deepOrange [200],
          centerTitle: true,
        ),
        floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Row(
          children: <Widget> [
            FloatingActionButton(onPressed: () {},
              child: Icon(Icons.remove),
              backgroundColor: Colors.deepOrange [200],
            ),
            const Spacer(),
            FloatingActionButton(onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.green [200],
            ),
          ],
        ),
      ),
    ),
  )
);
