// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors, unused_label

import 'package:flutter/material.dart';

class Message {
  final String text;
  final String senderName;

  Message(this.text, this.senderName);
}

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _messages = <Message>[];
  final TextEditingController _textController = TextEditingController();

  final Map<String, String> _profileImages = {
    'Alice': 'lib/images/flor.jpeg',
    'Marina': 'lib/images/gatinho.png',
    'João': 'lib/images/cachorro.jpeg',
    'Pedro': 'lib/images/tigre.jpeg',
  };

  final List<String> _contacts = ['Alice', 'Marina', 'João', 'Pedro'];
  int _activeContactIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        backgroundColor: Color.fromARGB(255, 190, 34, 204),
      ),
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    if (text.trim().isEmpty) return;
    Message message = Message(text, _contacts[_activeContactIndex]);
    setState(() {
      _messages.add(message);
    });
    _textController.clear();
  }

  Widget _buildMessage(Message message) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              _profileImages[message.senderName] ?? '',
            ),
            child: Text(message.senderName[0]),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 5.0, right: 5.0),
                child: Text(
                  message.senderName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(message.text),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: DropdownButton<String>(
                value: _contacts[_activeContactIndex],
                items: _contacts
                    .map(
                      (contact) => DropdownMenuItem<String>(
                        value: contact,
                        child: Text(contact),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _activeContactIndex = _contacts.indexOf(value!);
                  });
                },
              ),
            ),
            Expanded(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration.collapsed(
                  hintText: 'Enviar mensagem',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                _handleSubmitted(_textController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
