import 'package:flutter/material.dart';
import 'package:pokedex/utils/widgets.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({this.pokemonList, this.dexEntry});
  final pokemonList;
  final dexEntry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          PokemonObject(
            pokemonList: pokemonList,
            dexEntry: 0,
          ),
          PokemonObject(
            pokemonList: pokemonList,
            dexEntry: 1,
          ),
        ],
      )),
    );
  }
}
