import 'package:flutter/material.dart';
import 'package:pokedex/screens/about_screen.dart';
import 'package:pokedex/screens/pokedex_screen.dart';
import 'package:pokedex/services/pokemon.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen(this.screen);
  final screen;

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String screen;

  @override
  void initState() {
    super.initState();

    getPokemonData(widget.screen);
  }

  void getPokemonData(dynamic screen) async {
    var pokemonData = await GetPokemon()
        .getPokemon(); // Gets that data that will need to be passed to any screen that is loaded
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (screen == 'pokedex') {
        return PokedexScreen(
          data: pokemonData,
        );
      } else if (screen == 'about') {
        return AboutScreen(pokemonData: pokemonData);
      } else {
        return PokedexScreen(
          data: pokemonData,
        );
      }
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
