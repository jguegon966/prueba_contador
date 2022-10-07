import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 40);
    
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('App contador'),
        elevation: 10,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Numero de Clicks',
            style: textStyle,
          ),
          Text(
            '$contador',
            style: textStyle,
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                contador++;
                setState(() {});
              }
            ),
            
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                contador--;
                setState(() {});
              },
            )

          ],
        ),
    );
  }
}
