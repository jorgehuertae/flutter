import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

/*
cambiar text x Column
 */
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          //height: 10, width: 10,
          decoration: BoxDecoration(
              color: colors.primary/*Colors.black*/, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('yO Nisi duis eu incididunt',
                style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10) /*separador */
      ],
    );
  }
}
