// ignore_for_file: dead_code, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaSobre extends StatelessWidget {
  const TelaSobre(String s, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Voltar'),
          backgroundColor: const Color.fromARGB(255, 164, 26, 177),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/fundotela.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: 150,
              ),
              Text(
                'Tema Escolhido: ',
                style: GoogleFonts.montserrat(
                  color: const Color.fromARGB(255, 134, 5, 209),
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              Text(
                ' Eficiência e a Agilidade',
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 90, 90, 90),
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Objetivo do Aplicativo: ',
                style: GoogleFonts.montserrat(
                  color: const Color.fromARGB(255, 134, 5, 209),
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Contribuir ao Setor de Segurança Patrimonial, dentro do Hospital das Clínicas, afim de melhorar todo o trabalho e a comunicação entre funcionários e chefia, promover interação instantânea, dar garantia e o respaldo dos serviços prestados em relação ao Hospital.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(20),
                  width: 330,
                  height: 240,
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            width: 7, color: Color.fromARGB(255, 118, 59, 255)),
                        right: BorderSide(
                            width: 10,
                            color: Color.fromARGB(255, 144, 59, 255)),
                        bottom: BorderSide(
                            width: 13, color: Color.fromRGBO(176, 61, 221, 1)),
                        left: BorderSide(
                            width: 9,
                            color: Color.fromARGB(255, 225, 26, 243))),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Desenvolvedor',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('lib/images/dev.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorrayne batista dos Santos',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
