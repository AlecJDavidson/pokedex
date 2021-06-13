import 'dart:convert';
import '../classes/pokemon.dart';
import 'package:http/http.dart' as http;

Future<Pokemon> fetchPokemon(String pokedexEntry) async {
  final response = await http.get(Uri.parse(
      'https://poke-api-production.herokuapp.com/api/pokemonBy?entry=$pokedexEntry'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Pokemon.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Pokemon');
  }
}
