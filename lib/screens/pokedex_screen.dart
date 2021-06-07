import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pokedex/styles.dart';
import 'package:pokedex/utils/pokemonCard.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({this.data, this.dexEntry});
  final data;
  final dexEntry;

  @override
  Widget build(BuildContext context) {
    int max = 150;
    return ListView(
      children: [
        Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(children: [
                for (int i = 0; i < max; i += 2)
                  PokemonObject(
                    pokemonData: data,
                    dexEntry: i,
                  ),
              ]),
              Column(children: [
                for (int j = 1; j < max; j += 2)
                  PokemonObject(
                    pokemonData: data,
                    dexEntry: j,
                  ),
              ]),
            ]),
          ],
        ),
      ],
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
