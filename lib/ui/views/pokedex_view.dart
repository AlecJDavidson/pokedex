import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pokedex/theme/styles.dart';
import 'package:pokedex/components/pokedex_entry.dart';

class PokedexView extends StatelessWidget {
  const PokedexView({this.data, this.dexEntry});
  final data;
  final dexEntry;

  @override
  Widget build(BuildContext context) {
    int max = 150;
    return Container(
      color: primary,
      child: ListView(
        children: [
          for (int i = 0; i < max; i++)
            Center(
              child: PokedexEntry(
                pokemonData: data,
                dexEntry: i,
              ),
            ),
        ],
      ),
    );
  }
}

// class PokedexView extends StatefulWidget {
//   PokedexView({this.pokemonList, this.dexEntry});
//   final pokemonList;
//   final dexEntry;

//   @override
//   _PokedexViewState createState() => _PokedexViewState();
// }

// class _PokedexViewState extends State<PokedexView> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           child: ListView(
//         children: [
//           for (int i = 0; i < 150; i++)
//             PokedexEntry(
//               pokemonList: pokemonList,
//               dexEntry: i,
//             )
//         ],
//       )),
//     );
//   }
// }
