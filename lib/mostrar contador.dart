import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/contador%20server.dart';

class ShowCounter extends StatefulWidget {
  @override
  _ShowCounterState createState() => _ShowCounterState();
}

class _ShowCounterState extends State<ShowCounter> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Counter State'),
        ),
        body:Center(
            child: Container(

              width: 200,
              height: 200,
              child: Center(child: Text(Provider.of<Contador>(context).getCounter().toString(), style: TextStyle(fontSize: 30),)),
            )
        ),
    );
  }
}
