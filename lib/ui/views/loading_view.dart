import 'package:flutter/material.dart';
import 'package:pokedex/ui/views/detail_view.dart';
import 'package:pokedex/ui/views/pokedex_view.dart';
import 'package:pokedex/services/pokemon.dart';

class LoadingView extends StatefulWidget {
  LoadingView(this.view);
  final view;

  @override
  _LoadingViewState createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  String view;

  @override
  void initState() {
    super.initState();

    getPokemonData(widget.view);
  }

  void getPokemonData(dynamic view) async {
    var pokemonData = await GetPokemon()
        .getPokemon(); // Gets that data that will need to be passed to any view that is loaded
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (view == 'pokedex') {
        return PokedexView(
          data: pokemonData,
        );
      } else if (view == 'about') {
        return DetailView(pokemonData: pokemonData);
      } else {
        return PokedexView(
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
          height: 100.0,
          width: 100.0,
        ),
      ),
    );
  }
}
