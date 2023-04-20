// ignore_for_file: file_names, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

class RelatorioScreen extends StatefulWidget {
  final String nomeFuncionario;
  final String data;

  const RelatorioScreen({
    Key? key,
    required this.nomeFuncionario,
    required this.data,
  }) : super(key: key);

  @override
  _RelatorioScreenState createState() => _RelatorioScreenState();
}

class _RelatorioScreenState extends State<RelatorioScreen> {
  final List<TextEditingController> controllers = List.generate(
    14,
    (index) => TextEditingController(),
  );
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório de ocorrências'),
        backgroundColor: const Color.fromARGB(255, 164, 26, 177),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/fundotela.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 115),
            Text(
              'Nome do funcionário e Data da Ocorrência: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, height: 3, fontSize: 18),
            ),
            TextFormField(
              controller: nomeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Table(
              children: List.generate(
                8,
                (index) => TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: TextFormField(
                        controller: controllers[index],
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Relatório Salvo com sucesso!'),
            ),
          );
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
