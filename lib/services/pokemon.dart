import 'package:pokedex/services/networking.dart';

const pokeApiUrl = 'https://poke-api-production.herokuapp.com/api/pokemon';

class PokemonModel {
  Future<dynamic> getPokemon() async {
    NetworkHelper networkHelper = NetworkHelper('$pokeApiUrl');

    var pokemonData = await networkHelper.getData();
    return pokemonData;
  }
}
