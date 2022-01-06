import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/contador%20server.dart';
import 'package:provider1/mostrar%20contador.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void increment(BuildContext context){
    Provider.of<Contador>(context, listen: false).incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    // aqui se ponen los listeners porque este se actualiza constantemente
    var counter = Provider.of<Contador>(context).getCounter();

    return Scaffold(
      appBar: AppBar(title: Text("Provider"),
      actions: [
        IconButton(icon: Icon(Icons.add), onPressed: (){
          // incrementar el nro
          increment(context);
        }),
        IconButton(icon: Icon(Icons.cancel), onPressed: (){
          // volver cero
          Provider.of<Contador>(context, listen: false).setZero();
        }),
        IconButton(icon: Icon(Icons.pages), onPressed: (){
          Route route = MaterialPageRoute(builder: (context) => ShowCounter());
          Navigator.push(context, route);
        })
      ]),

      body: Center(
        child: Text('Counter = $counter'),
      ),
    );
  }
}
