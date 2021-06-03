import 'package:flutter/material.dart';
import 'package:pokedex/services/pokemon.dart';
import 'package:pokedex/screens/about_screen.dart';


class TestWidget extends StatefulWidget {
  TestWidget({this.textTest});

  final textTest;

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  String testEntry = 'starting value 1a'; // linked 1a

  @override
  void initState() {
    super.initState();

    updateUI(widget.textTest);
  }

  void updateUI(dynamic testData) {
    setState(() {
      if (testData == null) {
        // testData = '999';
        return;
        }
      testEntry = 'changed to this 1b';} // linked 1b

    );
  }


  Widget build(BuildContext context) {
    return Container(
            child: TextButton(
              child: Text(
                'test number: $testEntry', // linked 1c
              ),
              onPressed: ()  {
                
                var testData=''; // Declaring for use. Inherits value from 1b.
                updateUI(testData);
              },
            ),
          );
  }
}




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