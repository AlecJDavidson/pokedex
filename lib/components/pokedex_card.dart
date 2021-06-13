import 'package:flutter/material.dart';
import 'package:pokedex/utils/ui_utils.dart';
import 'package:pokedex/views/details_view.dart';

class PokedexCard extends StatelessWidget {
  const PokedexCard({Key key, this.pokemonData}) : super(key: key);
  final pokemonData;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: getColor(pokemonData.type1).withAlpha(200),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: TextButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailView(pokemonData: pokemonData);
                },
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      pokemonData.name +
                          ' ' +
                          '#' +
                          pokemonData.entry.toString().padLeft(3, '0'),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                    // Text(
                    //     ' ' + pokemonData.entry.toString()),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        color: getColor(pokemonData.type1),
                        child: Text(pokemonData.type1)),

                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        color: getColor(pokemonData.type2),
                        child: Text(pokemonData.type2)),
                  ]),
              SizedBox(
                height: 120,
                child: Image.asset(
                  'assets/sprites/' + (pokemonData.entry.toString()) + '.png',
                  // height: 150,
                  // width: 150,
                ),
              ),
            ],
          ),
        ));
  }
}
