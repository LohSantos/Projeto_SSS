// ignore_for_file: file_names, unused_import, library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_lorrayne/view/Tela_login.dart';

import 'Tela_inicio.dart';
import 'Tela_relatorios.dart';
import 'Tela_sobre.dart';
import 'chatPage.dart';

class TelaUsuario extends StatefulWidget {
  const TelaUsuario({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  _TelaUsuarioState createState() => _TelaUsuarioState();
}

class _TelaUsuarioState extends State<TelaUsuario> {
  var pageIndex = 0;
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final String email = widget.email;
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Bem-vindo, ${widget.email.split('@')[0].split('.')[0]} ${widget.email.split('@')[0].split('.')[1]}'),
          backgroundColor: const Color.fromARGB(255, 164, 26, 177)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Lorrayne Santos'),
              accountEmail: Text(email),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('lib/images/panda.jpeg'),
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 77, 255),
              ),
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text('Amigos'),
                onTap: () {
                  Navigator.pop(context);
                  // Aqui pode-se adicionar a navegação para a página 3
                }),
            ListTile(
                leading: Icon(Icons.share),
                title: Text('Compartilhar'),
                onTap: () {
                  Navigator.pop(context);
                  // Aqui pode-se adicionar a navegação para a página 4
                }),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notificações'),
              onTap: () {
                Navigator.pop(context);
                // Aqui pode-se adicionar a navegação para a página 4
              },
              trailing: ClipOval(
                child: Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Text(
                      '8',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configurações'),
                onTap: () {
                  Navigator.pop(context);
                  // Aqui pode-se adicionar a navegação para a página 5
                }),
            ListTile(
                leading: Icon(Icons.chat),
                title: Text('Chat'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatPage()),
                  );
                }),
            Divider(),
            ListTile(
              leading: Icon(Icons.contact_support),
              title: const Text('Ajuda'),
              onTap: () {
                Navigator.pop(context);
                // Aqui pode-se adicionar a navegação para a página 1
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Sobre'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSobre("Sobre")),
                );
              },
            ),
            Divider(),
            ListTile(
                title: Text('Sair'),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Atenção'),
                        content:
                            Text('Você deseja realmente sair da aplicação?'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Não'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaUsuario(
                                          email: '',
                                        )),
                              );
                            },
                          ),
                          TextButton(
                            child: Text('Sim'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaLogin("Login")),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                }),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 170),
                itemCount: 6,
                itemBuilder: (context, index) {
                  String title;
                  String subtitle;
                  IconData icon;

                  switch (index) {
                    case 0:
                      title = 'RIO (Registro Interno de Ocorrência)';
                      subtitle = 'Sistema de registro de ocorrências internas';
                      icon = Icons.security;
                      break;
                    case 1:
                      title = 'Relatórios Gerados';
                      subtitle = 'Relatórios gerados pelo sistema';
                      icon = Icons.receipt;
                      break;
                    case 2:
                      title = 'Usuários';
                      subtitle = 'Gerenciamento de usuários';
                      icon = Icons.person;
                      break;
                    case 3:
                      title = 'Frequências e Acessos';
                      subtitle = 'Registro de frequência e acesso dos usuários';
                      icon = Icons.access_time;
                      break;
                    case 4:
                      title = 'Conferência de Patrimônios';
                      subtitle = 'Sistema de conferência de patrimônios';
                      icon = Icons.inventory;
                      break;
                    case 5:
                      title = 'Validação de Local';
                      subtitle = 'Validação de local dos usuários';
                      icon = Icons.location_on;
                      break;
                    default:
                      title = '';
                      subtitle = '';
                      icon = Icons.error;
                      break;
                  }

                  return ListTile(
                    title: Text(title),
                    subtitle: Text(subtitle),
                    trailing: Icon(Icons.arrow_forward_ios),
                    leading: Icon(icon),
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => RelatorioScreen(
                                        data: '',
                                        nomeFuncionario: '',
                                      )));
                          break;
                      }
                    },
                  );
                },
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/images/fundotela.jpg'),
                      fit: BoxFit.fill))),
          Container(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 130),
                itemCount: 6,
                itemBuilder: (context, index) {
                  String title;
                  String subtitle;

                  switch (index) {
                    case 0:
                      title = '1234';
                      subtitle = 'Sala / Chefia';
                      break;
                    case 1:
                      title = '5678';
                      subtitle = 'Diretor';
                      break;
                    case 2:
                      title = '9876';
                      subtitle = 'Higiene e Limpeza';
                      break;
                    case 3:
                      title = '5432';
                      subtitle = 'Nutrição';
                      break;
                    case 4:
                      title = '2468';
                      subtitle = 'Portaria';
                      break;
                    case 5:
                      title = '1357';
                      subtitle = 'Médico Servidor';
                      break;
                    default:
                      title = '';
                      subtitle = '';
                      break;
                  }
                  return Card(
                      child: ListTile(
                    title: Text(title),
                    subtitle: Text(subtitle),
                  ));
                },
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/images/fundotela.jpg'),
                      fit: BoxFit.fill))),
        ],
        onPageChanged: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        backgroundColor: const Color.fromARGB(255, 164, 26, 177),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white24,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Ramais',
          ),
        ],
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
          pageController.animateToPage(index,
              duration: Duration(milliseconds: 200), curve: Curves.easeIn);
        },
      ),
    );
  }
}
