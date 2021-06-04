import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
import 'package:pokedex/screens/about_screen.dart';
// ignore: unused_import
import 'package:pokedex/styles.dart';

import 'functions.dart';

class PokemonObject extends StatefulWidget {
  PokemonObject({this.pokemonList, this.dexEntry});
  final pokemonList;
  final dexEntry;

  @override
  _PokemonObjectState createState() => _PokemonObjectState();
}

class _PokemonObjectState extends State<PokemonObject> {
  PokemonModel pokemon = PokemonModel();

  int entry;
  String name;
  String type1;

  @override
  void initState() {
    super.initState();

    updateUI(widget.pokemonList, widget.dexEntry);
  }

  void updateUI(dynamic pokemonData, dynamic dexEntry) {
    setState(() {
      entry = pokemonData['data'][dexEntry]['entry'];
      name = pokemonData['data'][dexEntry]['name'];
      type1 = pokemonData['data'][dexEntry]['types'][0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/image.png"),
          child: SizedBox(
            height: 300,
            width: 300,
            child: Card(
              color: getColor(type1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              child: TextButton(
                child: Text(
                  '$name' + '  dex: $entry' + ' type: $type1',
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AboutScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
