import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
import 'package:pokedex/screens/about_screen.dart';
import 'package:pokedex/utils/widgets.dart';
import 'package:pokedex/utils/functions.dart';


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
			PokemonObject(),
			PokemonObject(),
			PokemonObject(),
			PokemonObject(),
			PokemonObject(),
			PokemonObject(),
			PokemonObject(),
          
		  	TestWidget(),

		//   PokemonObject()
        ],
      )),
    );
  }
}