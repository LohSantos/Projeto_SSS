// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore, no_leading_underscores_for_local_identifiers, dead_code

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_lorrayne/view/Esqueceu_senha.dart';
import 'package:projeto_lorrayne/view/Tela_cadastro.dart';

import 'Tela_inicio.dart';
import 'Tela_usuario.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin(String s, {super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  bool isLoading = false;
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  String email = '';

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voltar'),
        backgroundColor: const Color.fromARGB(255, 164, 26, 177),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicio()),
                )),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/fundotela.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              color: Colors.transparent,
              height: 150,
            ),
            Text(
              'Login',
              style: GoogleFonts.montserrat(
                color: Color.fromARGB(255, 134, 5, 209),
                fontSize: 50,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Continue para Acessar',
              style: GoogleFonts.montserrat(
                color: Color.fromARGB(255, 133, 13, 245),
                fontSize: 14,
                fontStyle: FontStyle.normal,
              ),
            ),
            logar(),
          ],
        ),
      ),
    );
  }

  logar() {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          //CAMPO DE TEXTO
          TextField(
            controller: txtEmail,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 39, 38, 38)),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromRGBO(59, 58, 58, 0.855),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            ),
          ),
          SizedBox(height: 15),
          //CAMPO DE TEXTO
          TextField(
            controller: txtSenha,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 39, 38, 38),
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: Color.fromRGBO(59, 58, 58, 0.855),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Color.fromRGBO(59, 58, 58, 0.855),
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
              // ignore: sort_child_properties_last
              child: Text(
                'Esqueceu a Senha?',
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 133, 13, 245),
                    fontSize: 16,
                    fontStyle: FontStyle.normal),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TelaEsqueceuSenha("Esqueceu Senha")),
                );
              }),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300, 70),
              foregroundColor: Color.fromRGBO(252, 252, 252, 1),
              backgroundColor: Color.fromARGB(255, 133, 13, 245),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            ),
            onPressed: () {
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              if (!emailRegex.hasMatch(txtEmail.text)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Por favor, digite um email válido')),
                );
                return;
              }
              setState(() {
                isLoading = true;
                email = txtEmail.text;
              });

              Future.delayed(Duration(seconds: 2), () {
                setState(() {
                  isLoading = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaUsuario(email: txtEmail.text)),
                );
              });
            },
            child: Stack(
              children: [
                Visibility(
                  visible: isLoading,
                  child: CircularProgressIndicator(),
                ),
                Text(
                  'Entrar',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          TextButton(
              // ignore: sort_child_properties_last
              child: Text(
                'Não tem Cadastro? Registre-se',
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 133, 13, 245),
                    fontSize: 16,
                    fontStyle: FontStyle.normal),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaCadastro("Cadastro")),
                );
              })
        ],
      ),
    ));
  }
}
