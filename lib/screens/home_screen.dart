import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 40);

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('App de pruebas'),
        elevation: 10,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Numero de Clicks',
            style: textStyle,
          ),
          Text(
            '10',
            style: textStyle,
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        child: Column(children: const <Widget>[
          Icon(Icons.add),
          Icon(Icons.remove)
        ],), 
        onPressed: () {
          print('Hola mundo');
        },
        
      ),
    );
  }
}
