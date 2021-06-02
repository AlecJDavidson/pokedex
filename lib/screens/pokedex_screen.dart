import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants.dart';
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
        String entry = '0';
        // pokemonIcon = 'Error';
        // pokemonMessage = 'Unable to get pokemon data';
        String name = 'none';
        return;
      }
      entry = pokemonData['data'][1]['entry'];
      name = pokemonData['data'][1]['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      var pokemonData = await pokemon.getPokemon();
                      updateUI(pokemonData);
                    },
 
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$name'+'  dex: $entry',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
