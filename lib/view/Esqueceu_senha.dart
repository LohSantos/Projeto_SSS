// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, unused_import
// ignore: avoid_web_libraries_in_flutter
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_lorrayne/view/Tela_login.dart';

import 'Tela_sobre.dart';

class TelaEsqueceuSenha extends StatefulWidget {
  const TelaEsqueceuSenha(String s, {super.key});

  @override
  State<TelaEsqueceuSenha> createState() => _TelaEsqueceuSenhaState();
}

class _TelaEsqueceuSenhaState extends State<TelaEsqueceuSenha> {
  var txtValidarEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Voltar'),
          backgroundColor: const Color.fromARGB(255, 164, 26, 177),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/fundotela.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              Container(
                color: Colors.transparent,
                height: 170,
              ),
              Text(
                'Esqueceu ',
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 134, 5, 209),
                  fontSize: 45,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'a Senha ?',
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 134, 5, 209),
                  fontSize: 45,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Informe o e-mail cadastrado.',
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 153, 153, 153),
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                  child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(20),
                      width: 330,
                      height: 240,
                      decoration: BoxDecoration(
                          border: const Border(
                              top: BorderSide(
                                  width: 7,
                                  color: Color.fromARGB(255, 118, 59, 255)),
                              right: BorderSide(
                                  width: 10,
                                  color: Color.fromARGB(255, 144, 59, 255)),
                              bottom: BorderSide(
                                  width: 13,
                                  color: Color.fromRGBO(176, 61, 221, 1)),
                              left: BorderSide(
                                  width: 9,
                                  color: Color.fromARGB(255, 225, 26, 243)))),
                      child: Column(children: [
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: txtValidarEmail,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 39, 38, 38)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color.fromRGBO(59, 58, 58, 0.855),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90)),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(210, 80),
                            foregroundColor: Color.fromRGBO(252, 252, 252, 1),
                            backgroundColor: Color.fromARGB(255, 133, 13, 245),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Atenção'),
                                  content: Text(
                                      'Você receberá por e-mail um link para cadastrar uma nova senha'),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TelaLogin("Login")),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            'Recuperar',
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                      ])))
            ])));
  }
}
