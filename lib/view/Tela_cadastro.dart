// ignore: duplicate_ignore
// ignore: file_names
// ignore: unused_import
// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_lorrayne/view/Tela_login.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro(String s, {super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();
  var txtMatricula = TextEditingController();
  var txtFuncao = TextEditingController();
  var txtTelefone = TextEditingController();
  var txtEndereco = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  bool _obscureText = true;

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
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                color: Colors.transparent,
                height: 130,
              ),
              Text(
                'Cadastrar',
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 134, 5, 209),
                  fontSize: 35,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Novo Usuário',
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 134, 5, 209),
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: cadastrar(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 110),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
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
                            title: Text('Cadastro realizado com Sucesso!!'),
                            content: Text(
                                'Acesse a Tela de Login e faça sua autenticação.'),
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
                        });
                  },
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  cadastrar() {
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: txtNome,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 39, 38, 38),
                    ),
                    prefixIcon: Icon(
                      Icons.contact_mail,
                      color: Color.fromRGBO(59, 58, 58, 0.855),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              );

            case 1:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: txtMatricula,
                  decoration: InputDecoration(
                    labelText: 'Matrícula',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 39, 38, 38)),
                    prefixIcon: Icon(
                      Icons.fact_check,
                      color: Color.fromRGBO(59, 58, 58, 0.855),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              );

            case 2:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: txtFuncao,
                  decoration: InputDecoration(
                    labelText: 'Função',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 39, 38, 38)),
                    prefixIcon: Icon(
                      Icons.badge,
                      color: Color.fromRGBO(59, 58, 58, 0.855),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              );

            case 3:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: txtTelefone,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 39, 38, 38)),
                    prefixIcon: Icon(
                      Icons.call,
                      color: Color.fromRGBO(59, 58, 58, 0.855),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              );

            case 4:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: txtEndereco,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 39, 38, 38)),
                    prefixIcon: Icon(
                      Icons.add_location,
                      color: Color.fromRGBO(59, 58, 58, 0.855),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              );

            case 5:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: txtNome,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 39, 38, 38)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromRGBO(59, 58, 58, 0.855),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              );

            case 6:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
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
              );
          }
          return null;
        });
  }
}
