import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
import 'package:pokedex/screens/about_screen.dart';


class PokemonObject extends StatefulWidget {
  PokemonObject({this.pokemonList});
  final pokemonList;


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

    updateUI(widget.pokemonList);
    getPokemonData();

  }

    void getPokemonData() async {
    var pokemonData = await PokemonModel().getPokemon();


    return pokemonData;
    }
  
    void updateUI(dynamic pokemonData) {
    setState(() {
      if (pokemonData == null) {
        // String entry = '0';
        // String name = 'none';
        return;
      }
   
      entry = pokemonData['data'][0]['entry'];
      name = pokemonData['data'][0]['name'];
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
                var pokemonData = await pokemon.getPokemon();
                updateUI(pokemonData);
              },
            ),
  );
    
  }
}