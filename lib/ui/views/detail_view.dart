import 'package:flutter/material.dart';
import 'package:pokedex/ui/views/loading_view.dart';

class DetailView extends StatefulWidget {
  DetailView({this.pokemonData});
  final pokemonData;

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
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
                          return LoadingView('pokedex');
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
