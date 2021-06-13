import 'package:flutter/material.dart';
import 'package:pokedex/main.dart';
import 'package:pokedex/utils/ui_utils.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key key, this.pokemonData}) : super(key: key);
  final pokemonData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '''Poke'Dex''',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Container(
          color: getColor(pokemonData.type1).withAlpha(200),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 0.0),
            child: Column(children: [
              Row(
                children: [
                  TextButton(
                    child: Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyApp();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(pokemonData.name),
                    Spacer(),
                    Text(
                      '#' + pokemonData.entry.toString().padLeft(3, '0'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Card(
                      child: Text(pokemonData.type1),
                    ),
                    Card(
                      child: Text(pokemonData.type2),
                    ),
                    Spacer(),
                    Text(pokemonData.species),
                  ],
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/' + (pokemonData.entry.toString()) + '.png',
                ),
              ),
              Center(
                child: Text('About'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Height: ' + pokemonData.height + 'm'),
                  Text('Weight: ' + pokemonData.weight + 'kg'),
                ],
              ),
              // Text(pokemonData.ability1),
            ]),
          ),
        ),
      ),
    );
  }
}

// TextButton(
//                   child: Icon(
//                     Icons.arrow_back,
//                     size: 50.0,
//                   ),
//                   onPressed: () async {
//                     await Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return MyApp();
//                         },
//                       ),
//                     );
//                   },
//                 ),
