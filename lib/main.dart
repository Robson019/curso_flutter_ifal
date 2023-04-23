import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOpacity = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('IFAL: Curso de Flutter'),
        ),
        body: AnimatedOpacity(
          opacity: isOpacity ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task("Iniciando o Curso I", 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 1),
              Task("Iniciando o Curso II", 'https://yt3.googleusercontent.com/jPTB3T04OcHX_JE54RRzGOu6PmZFtlVJZVahcAXKjuYTIYkVkGswTjg3aWdTKuwioLPSK3tWjyk=s900-c-k-c0x00ffffff-no-rj', 2),
              Task("Curso de Flutter I", 'https://www2.ifal.edu.br/noticias/ifal-conquista-oito-das-10-melhores-posicoes-entre-escolas-publicas-de-alagoas-no-enem/campus-arapiraca-e-pela-terceira-vez-consecutiva-a-melhor-instituicao-publica-de-ensino-medio-em-alagoas_files.jpeg/@@images/292b23b1-6cb1-49c0-8c7a-2e1348537989.jpeg', 3),
              Task("Curso de Flutter II", 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 4),
              Task("Finalizando o Curso", 'https://www2.ifal.edu.br/noticias/ifal-conquista-oito-das-10-melhores-posicoes-entre-escolas-publicas-de-alagoas-no-enem/campus-arapiraca-e-pela-terceira-vez-consecutiva-a-melhor-instituicao-publica-de-ensino-medio-em-alagoas_files.jpeg/@@images/292b23b1-6cb1-49c0-8c7a-2e1348537989.jpeg', 3)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isOpacity = !isOpacity;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String phrase;
  final String photo;
  final int difficult;

  const Task(this.phrase, this.photo, this.difficult, {super.key});

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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.red,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(widget.photo,
                            scale: 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: Text(widget.phrase,
                            style: TextStyle(
                              fontSize: 24, overflow: TextOverflow.ellipsis),
                            )),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: (widget.difficult >= 1) ? Colors.orange : Colors.orange[100],),
                                Icon(Icons.star, size: 15, color: (widget.difficult >= 2) ? Colors.orange : Colors.orange[100],),
                                Icon(Icons.star, size: 15, color: (widget.difficult >= 3) ? Colors.orange : Colors.orange[100],),
                                Icon(Icons.star, size: 15, color: (widget.difficult >= 4) ? Colors.orange : Colors.orange[100],),
                                Icon(Icons.star, size: 15, color: (widget.difficult == 5) ? Colors.orange : Colors.orange[100],),
                              ],
                            )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              level++;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text('UP', style: TextStyle(fontSize: 12),)
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.difficult > 0) ? (level/widget.difficult) / 10 : 1,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Nível:$level',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}