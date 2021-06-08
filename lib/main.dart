import 'package:flutter/material.dart';
import 'package:pokedex/ui/views/loading_view.dart';
import 'package:pokedex/ui/views/pokedex_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: LoadingView('pokedex'),
    );
  }
}
