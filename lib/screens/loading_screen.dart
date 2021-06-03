import 'package:flutter/material.dart';
import 'package:pokedex/screens/pokedex_screen.dart';
import 'package:pokedex/services/pokemon.dart';
import 'package:pokedex/utils/widgets.dart';

import 'pokedex_screen.dart';
import 'pokedex_screen.dart';

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

  // void getPokedexHome() async {

  //   Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return PokedexScreen();
  //   }));
  // }

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
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 10,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          ),
          height: 200.0,
          width: 200.0,
        ),
      ),
    );
  }
}
