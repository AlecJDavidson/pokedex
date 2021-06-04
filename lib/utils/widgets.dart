import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
import 'package:pokedex/screens/about_screen.dart';

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

  @override
  void initState() {
    super.initState();

    updateUI(widget.pokemonList, widget.dexEntry);
  }

  void updateUI(dynamic pokemonData, dynamic dexEntry) {
    setState(() {
      entry = pokemonData['data'][dexEntry]['entry'];
      name = pokemonData['data'][dexEntry]['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          '$name' + '  dex: $entry',
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
    );
  }
}
