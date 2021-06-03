import 'package:flutter/material.dart';
import 'package:pokedex/utils/widgets.dart';


class PokedexScreen extends StatelessWidget {
  const PokedexScreen({this.pokemonList});
  final pokemonList;


  @override
  Widget build(BuildContext context) {
	return Scaffold(
      body: Container(
        child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
			PokemonObject(pokemonList: pokemonList),
			PokemonObject(pokemonList: pokemonList),

        ],
      )),
    );
  }
}