import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

/*
cambiar text x Column
 */
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //height: 10, width: 10,
          decoration: BoxDecoration(
              color: colors.secondary /*Colors.black*/,
              borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('hER Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        /*separador */

        _ImageBubble(),

        const SizedBox(height: 10)
        //Todo imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  //const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //print(size);
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
            'https://yesno.wtf/assets/no/18-1ba72d815ec0e2bff8dba8699a50e275.gif',
            width: size.width*0.7,
            height: 150,
            fit: BoxFit.cover));
  }
}
