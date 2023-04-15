import 'package:flutter/material.dart';

void main() => runApp(
  const Column(
    children: <Widget>[
      Text('Curso de Flutter IFAL', textDirection: TextDirection.ltr),
      Text('Aluno Robson', textDirection: TextDirection.ltr),
      Text('Instituto Federal de Alagoas', textDirection: TextDirection.ltr),
      Column(
        children: <Widget>[
          Center(
            child: Text('Escreva seu nome de usuário', textDirection: TextDirection.ltr),
          ),
        ]
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain, // otherwise the logo will be tiny
          child: FlutterLogo(),
        ), //fittedBox
      ),
    ], //<Widget>[]
  ),
);