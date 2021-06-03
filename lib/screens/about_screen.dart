import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
import 'package:pokedex/screens/loading_screen.dart';
import 'package:pokedex/utils/widgets.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({this.pokemonData});

  final pokemonData;

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  PokemonModel pokemon = PokemonModel();
  int entry;
  String pokemonIcon;
  String pokemonName;
  String pokemonMessage;

  @override
  void initState() {
    super.initState();

    updateUI(widget.pokemonData);
  }

  void updateUI(dynamic pokemonData) {
    setState(() {
      if (pokemonData == null) {
        entry = 0;
        pokemonIcon = 'Error';
        pokemonMessage = 'Unable to get pokemon data';
        pokemonName = '';
        return;
      }
      entry = pokemonData['data'][1]['entry'];
      // pokemonIcon = 'none';
      pokemonMessage = 'none';
      pokemonName = pokemonData['data'][1]['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: TextButton(
        child: Icon(
          Icons.arrow_back,
          size: 50.0,
        ),
        onPressed: () async {

          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoadingScreen();
              },
              
            ),
            
          );
        },
      ),
    ));
  }
}
