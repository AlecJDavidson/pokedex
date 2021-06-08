import 'package:flutter/widgets.dart';
import 'package:pokedex/enums/device_screen_type.dart';
import 'package:pokedex/theme/styles.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  //
  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }
  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}

Color getColor(pokeType) {
  var typeColor;
  if (pokeType == 'bug') {
    typeColor = bug;
  }
  if (pokeType == 'dark') {
    typeColor = dark;
  }
  if (pokeType == 'dragon') {
    typeColor = dragon;
  }
  if (pokeType == 'electric') {
    typeColor = electric;
  }
  if (pokeType == 'fairy') {
    typeColor = fairy;
  }
  if (pokeType == 'fighting') {
    typeColor = fighting;
  }
  if (pokeType == 'fire') {
    typeColor = fire;
  }
  if (pokeType == 'flying') {
    typeColor = flying;
  }
  if (pokeType == 'ghost') {
    typeColor = ghost;
  }
  if (pokeType == 'grass') {
    typeColor = grass;
  }
  if (pokeType == 'ground') {
    typeColor = ground;
  }
  if (pokeType == 'ice') {
    typeColor = ice;
  }
  if (pokeType == 'normal') {
    typeColor = normal;
  }
  if (pokeType == 'poison') {
    typeColor = poison;
  }
  if (pokeType == 'psychic') {
    typeColor = psychic;
  }
  if (pokeType == 'rock') {
    typeColor = rock;
  }
  if (pokeType == 'steel') {
    typeColor = steel;
  }
  if (pokeType == 'water') {
    typeColor = water;
  }
  return typeColor;
}

Color getColorAccent(pokeType) {
  var typeColor;
  if (pokeType == 'bug') {
    typeColor = bug;
  }
  if (pokeType == 'dark') {
    typeColor = dark;
  }
  if (pokeType == 'dragon') {
    typeColor = dragon;
  }
  if (pokeType == 'electric') {
    typeColor = electric;
  }
  if (pokeType == 'fairy') {
    typeColor = fairy;
  }
  if (pokeType == 'fighting') {
    typeColor = fighting;
  }
  if (pokeType == 'fire') {
    typeColor = fire;
  }
  if (pokeType == 'flying') {
    typeColor = flying;
  }
  if (pokeType == 'ghost') {
    typeColor = ghost;
  }
  if (pokeType == 'grass') {
    typeColor = grass;
  }
  if (pokeType == 'ground') {
    typeColor = ground;
  }
  if (pokeType == 'ice') {
    typeColor = ice;
  }
  if (pokeType == 'normal') {
    typeColor = normal;
  }
  if (pokeType == 'poison') {
    typeColor = poison;
  }
  if (pokeType == 'psychic') {
    typeColor = psychic;
  }
  if (pokeType == 'rock') {
    typeColor = rock;
  }
  if (pokeType == 'steel') {
    typeColor = steel;
  }
  if (pokeType == 'water') {
    typeColor = water;
  }
  return typeColor;
}
