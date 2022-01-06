import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/contador%20server.dart';

import 'home page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider( // la principal debe ser Multiprovider
      providers: [ChangeNotifierProvider.value(value: Contador())],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
