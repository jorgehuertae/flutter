import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://icons.iconarchive.com/icons/artua/star-wars/256/Darth-Vader-icon.png'),
          ),
        ),
        title: const Text('Hola Mundo '),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              //child: Container( color: Colors.red)
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Text('Indice $index');
                },
              ),
            ),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
