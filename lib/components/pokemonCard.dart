import 'package:flutter/material.dart';
import 'package:pokedex/ui/views/loading_view.dart';
import 'package:pokedex/utils/ui_utils.dart';

class PokemonObject extends StatefulWidget {
  PokemonObject({this.pokemonData, this.dexEntry});
  final pokemonData;
  final dexEntry;

  @override
  _PokemonObjectState createState() => _PokemonObjectState();
}

class _PokemonObjectState extends State<PokemonObject> {
  int entry;
  String name;
  String type1;
  String type2;
  String sprite;

  @override
  void initState() {
    super.initState();

    updateUI(widget.pokemonData, widget.dexEntry);
  }

  void updateUI(dynamic pokemonData, dynamic dexEntry) {
    setState(() {
      try {
        entry = pokemonData['data'][dexEntry]['entry'];
        name = pokemonData['data'][dexEntry]['name'];
        type1 = pokemonData['data'][dexEntry]['types'][0];
        type2 = pokemonData['data'][dexEntry]['types'][1];
        sprite = ('assets/sprites/' + entry.toString() + '.png');
      } catch (e) {
        entry = pokemonData['data'][0]['entry'];
        name = pokemonData['data'][0]['name'];
        type1 = pokemonData['data'][0]['types'][0];
        type2 = pokemonData['data'][0]['types'][1];
        sprite = ('assets/sprites/' + 0.toString() + '.png');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: (getColor(type1)).withAlpha(100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text('#'+('$entry'.padLeft(3,'0'))),
            SizedBox(
              width: 65,
              height: 80,
              child: Image.asset(sprite)),

            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$name'),
                Card(
                  color: getColorAccent(type1),
                  child: Text('$type1'),
                ),
                Card(
                  color: getColorAccent(type2),
                  child: Text('$type2'),
                )
              ],
            ),
          ],
        ),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoadingView('about');
              },
            ),
          );
        },
      ),
    );
  }
}
