//importM
import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

//stlesw
//cambiar name ->  ChatScreen
//cambiar return Container -> return Scaffold(appBar, Menu Lateral, ), por ser un componente llamado Screen
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
          /*leading: icono antes de title*/ /*Padding envolver en padding*/
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            /* crea un avatar circular */
            backgroundImage: NetworkImage(
                'https://icons.iconarchive.com/icons/artua/star-wars/256/Darth-Vader-icon.png'),
          ),
        ),
        title: const Text('Hola Mundo '),
        /* titulo */
        centerTitle: false,
      ),
      body:
          _ChatView(), /* originalmente es un Container, clic derecho y 'Extract Widget' y poner nombre _ChatView y remover el  Key*/
    );
  }
}

/*secion body, se podría hacer lo mismo con el AppBar */
/*cambiar Container x Column, porque necesitamos dos widgets */
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      /*si se quiere usar el espacio de los sensores y camara */
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        /*para lograr una separacion de la pantalla */
        child: Column(
          /*tiene varios hijos */
          /* se envuelve a SafeArea, para que el contenido no se monte */
          /* envolver en un padding para que no esté tan junto*/
          children: [
            Expanded(
              /*expande el widget hijo a todo el espacio disponible */
              //child: Container( color: Colors.red)
              child: ListView.builder(
                /*se construye en tiempo de ejecucion, requiere una funcion */
                itemCount: 50,
                /*elemntos maximos a crear en ejecucion */
                itemBuilder: (context /*arbol de widgets*/, index) {
                  //return const MyMessageBubble(); //Text('Indice $index');
                  return (index % 2 == 0) ? const HerMessageBubble(): const MyMessageBubble();
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
