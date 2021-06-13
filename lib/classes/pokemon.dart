class Pokemon {
  final String name;
  final int entry;
  final String type1;
  final String type2;
  final String species;
  final String ability1;
  final String height;
  final String weight;
  final String genderM;
  final String genderF;
  final String eggGroups;
  final String eggCycle;

  Pokemon({
    this.name,
    this.entry,
    this.type1,
    this.type2,
    this.species,
    this.ability1,
    this.height,
    this.weight,
    this.genderM,
    this.genderF,
    this.eggGroups,
    this.eggCycle,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
        name: json['data'][0]['name'],
        entry: json['data'][0]['entry'],
        type1: json['data'][0]['types'][0],
        type2: json['data'][0]['types'][1],
        species: json['data'][0]['about']['species'],
        // ability1: json['data'][0]['about']['abilites'][0],
        height: json['data'][0]['about']['height'],
        weight: json['data'][0]['about']['weight']);
  }
}
