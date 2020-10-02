import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Container(
          //width: 250.0,
          //height: 100.0,
          //color: Colors.red,
          child: Center(
            child: /*Text('Olá, Mundo!!!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
          */
          Center(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                )),
            ),
          )
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber
          ),
          padding: EdgeInsets.all(40.0),
          //margin: const EdgeInsets.all(10),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 330, 0),
        child: FloatingActionButton(
          onPressed: null,
          tooltip: 'Exemplo de Botão',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
