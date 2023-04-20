// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_lorrayne/view/Tela_login.dart';
import 'package:projeto_lorrayne/view/Tela_sobre.dart';

import 'Esqueceu_senha.dart';
import 'Tela_cadastro.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Início',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
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
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.only(top: 180),
            crossAxisSpacing: 15,
            mainAxisSpacing: 30,
            crossAxisCount: 2,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaLogin("Login")),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: const [
                        Color.fromARGB(255, 253, 1, 177),
                        Color.fromARGB(255, 128, 0, 248)
                      ],
                    ),
                  ),
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaCadastro("Cadastro")),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: const [
                        Color.fromARGB(255, 253, 1, 177),
                        Color.fromARGB(255, 128, 0, 248)
                      ],
                    ),
                  ),
                  child: Text(
                    'Cadastro',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const TelaEsqueceuSenha("Esqueceu Senha")),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: const [
                        Color.fromARGB(255, 253, 1, 177),
                        Color.fromARGB(255, 128, 0, 248)
                      ],
                    ),
                  ),
                  child: Text(
                    'Esqueceu a Senha ?!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaSobre("Sobre")),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: const [
                        Color.fromARGB(255, 253, 1, 177),
                        Color.fromARGB(255, 128, 0, 248)
                      ],
                    ),
                  ),
                  child: Text(
                    'Sobre',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
