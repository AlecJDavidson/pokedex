import 'package:flutter/material.dart';
import 'package:pokedex/views/pokedex_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '''Poke'Dex''',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Center(child: Text('''Poke'Dex''')),
        ),
        body: Center(
          child: SizedBox(
              width: 290,
              child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: PokedexView())),
        ),
      ),
    );
  }
}
