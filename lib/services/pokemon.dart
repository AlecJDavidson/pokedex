import 'package:pokedex/services/networking.dart';

const pokeApiUrl = 'https://poke-api-production.herokuapp.com/api/pokemon';

class PokemonModel {
  Future<dynamic> getPokemon() async {
    NetworkHelper networkHelper = NetworkHelper('$pokeApiUrl');

    var pokemonData = await networkHelper.getData();
    return pokemonData;
  }

  // repurpose for type declaration
  // String getWeatherIcon(int condition) {
  //   if (condition < 300) {
  //     return '🌩';
  //   } else if (condition < 400) {
  //     return '🌧';
  //   } else if (condition < 600) {
  //     return '☔️';
  //   } else if (condition < 700) {
  //     return '☃️';
  //   } else if (condition < 800) {
  //     return '🌫';
  //   } else if (condition == 800) {
  //     return '☀️';
  //   } else if (condition <= 804) {
  //     return '☁️';
  //   } else {
  //     return '🤷‍';
  //   }
  // }

}
