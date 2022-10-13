import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
  }

  void decrementar() {
    contador--;
  }

  void resetear() {
    contador = 0;
  }

  void setearEstado() {
    setState(() {});
  }

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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: CustomFloatingActions(
        incrementarFn: incrementar,
        decrementarFn: decrementar,
        resetearFn: resetear, 
        setearEstadoFn: setearEstado,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetearFn;
  final Function setearEstadoFn;

  const CustomFloatingActions({
    Key? key,
    required this.incrementarFn,
    required this.decrementarFn,
    required this.resetearFn, required this.setearEstadoFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => incrementarFn(),
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () => resetearFn(),
          child: const Icon(Icons.backspace_rounded),
        ),
        FloatingActionButton(
          onPressed: () => decrementarFn(),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () => setearEstadoFn(),
          child: const Icon(Icons.refresh),
        )
      ],
    );
  }
}




              /*
              onPressed: () {
                contador = 0;
                setState(() {});
              },
              */