//importM
import 'package:flutter/material.dart';

//stl
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Functions'))        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            //ejemplo 01
            //Text(clickCounter<=1?'Clic':'Clics', style: const TextStyle(fontSize: 25)),
            //ejemplo 02
            //Text('Click${clickCounter == 1 ? '':'s'}', style: const TextStyle(fontSize: 25)),
            //ejemplo 03
          if(clickCounter == 1)
            const Text('Click', style: TextStyle(fontSize: 25)),

          if(clickCounter != 1)
              const Text('Clicks', style: TextStyle(fontSize: 25)),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter += 1;
          setState(() {
            
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
