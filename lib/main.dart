import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dadoIzquierdo = 1;
  int dadoDerecho = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Dice App"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        elevation: 20,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              //se ajusta a la pantalla de lo que tenga el widget padre
              flex:
                  1, // si tiene 2  expande este indica el tamaño que debe tener
              child: TextButton(
                onPressed: () {
                  dadoIzquierdo = Random().nextInt(6) +1 ; // randon del 1 al 6 (suma 1 para que mo empieze en 0 )
                  dadoDerecho = Random().nextInt(6) +1 ;
                  print(dadoIzquierdo);
                  setState(() { // es propio de StatefulWidget, ejecutara nuevamente todo el build

                  });

                },
                child: Image.asset("assets/img/dice$dadoIzquierdo.png"),
              ),
            ),
            Expanded(
              //se ajusta a la pantalla de lo que tenga el widget padre
              flex:
                  1, // si tiene 2  expande este indica el tamaño que debe tener
              child: TextButton(
                onPressed: (){
                  dadoIzquierdo = Random().nextInt(6) +1 ; // randon del 1 al 6 (suma 1 para que mo empieze en 0 )
                  dadoDerecho = Random().nextInt(6) +1 ;

                  setState(() {

                  });
                },
                child: Image.asset("assets/img/dice$dadoDerecho.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
