import 'package:flutter/material.dart';
import 'package:pokedex/utils/pokemonCard.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({this.data, this.dexEntry});
  final data;
  final dexEntry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          for (int i = 0; i < 150; i++)
            PokemonObject(
              pokemonData: data,
              dexEntry: i,
            )
        ],
      )),
    );
  }
}

// class PokedexScreen extends StatefulWidget {
//   PokedexScreen({this.pokemonList, this.dexEntry});
//   final pokemonList;
//   final dexEntry;

//   @override
//   _PokedexScreenState createState() => _PokedexScreenState();
// }

// class _PokedexScreenState extends State<PokedexScreen> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           child: ListView(
//         children: [
//           for (int i = 0; i < 150; i++)
//             PokemonObject(
//               pokemonList: pokemonList,
//               dexEntry: i,
//             )
//         ],
//       )),
//     );
//   }
// }
