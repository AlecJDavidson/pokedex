import 'package:flutter/material.dart';
import 'pokedex_screen.dart';
import 'package:pokedex/services/pokemon.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getPokemonData();
  }

  void getPokemonData() async {
    var pokemonData = await PokemonModel().getPokemon();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PokedexScreen(
        pokemonList: pokemonData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
