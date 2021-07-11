import 'package:flutter/material.dart';
import 'package:pokedex/services/fetch_pokemon.dart';
import 'package:pokedex/classes/pokemon.dart';
import 'package:pokedex/components/pokedex_card.dart';

class PokedexView extends StatefulWidget {
  PokedexView({Key key}) : super(key: key);

  @override
  _PokedexViewState createState() => _PokedexViewState();
}

class _PokedexViewState extends State<PokedexView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: FutureBuilder<Pokemon>(
              future: fetchPokemon((index + 1).toString()),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return PokedexCard(pokemonData: snapshot.data);
                } else if (snapshot.hasError) {
                  return Text("MissingNo.");
                }

                // By default, show a loading spinner.
                // return Text('Loading...');
                return Image.asset(
                  'assets/sprites/' + (0.toString()) + '.png',
                  height: 30,
                  width: 30,
                );
              },
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: 151);
  }
}
