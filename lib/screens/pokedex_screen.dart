import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
import 'about_screen.dart';

class PokedexScreen extends StatefulWidget {
  PokedexScreen({this.pokemonList});

  final pokemonList;

  @override
  _PokedexScreenState createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {
  PokemonModel pokemon = PokemonModel();
  int entry;
  String name;

  @override
  void initState() {
    super.initState();

    updateUI(widget.pokemonList);
  }

  void updateUI(dynamic pokemonData) {
    setState(() {
      if (pokemonData == null) {
        // String entry = '0';
        // // pokemonIcon = 'Error';
        // // pokemonMessage = 'Unable to get pokemon data';
        // String name = 'none';
        return;
      }
      entry = pokemonData['data'][149]['entry'];
      name = pokemonData['data'][149]['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            var pokemonData = await pokemon.getPokemon();
            updateUI(pokemonData);
          },
        ),
      ),
    );
  }
}
