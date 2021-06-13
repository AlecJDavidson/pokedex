import 'package:flutter/widgets.dart';
// import 'package:pokedex/enums/device_screen_type.dart';
import 'package:pokedex/theme/styles.dart';

// DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
//   var orientation = mediaQuery.orientation;

//   //
//   double deviceWidth = 0;

//   if (orientation == Orientation.landscape) {
//     deviceWidth = mediaQuery.size.height;
//   } else {
//     deviceWidth = mediaQuery.size.width;
//   }
//   if (deviceWidth > 950) {
//     return DeviceScreenType.Desktop;
//   }
//   if (deviceWidth > 600) {
//     return DeviceScreenType.Tablet;
//   }

//   return DeviceScreenType.Mobile;
// }

Color getColor(pokeType) {
  switch (pokeType) {
    case 'bug':
      return bug;
    case 'dark':
      return dark;
    case 'dragon':
      return dragon;
    case 'electric':
      return electric;
    case 'fairy':
      return fairy;
    case 'fighting':
      return fighting;
    case 'fire':
      return fire;
    case 'flying':
      return flying;
    case 'ghost':
      return ghost;
    case 'grass':
      return grass;
    case 'ground':
      return ground;
    case 'ice':
      return ice;
    case 'normal':
      return normal;
    case 'poison':
      return poison;
    case 'psychic':
      return psychic;
    case 'rock':
      return rock;
    case 'steel':
      return steel;
    case 'water':
      return water;
    default:
      return grass;
  }
}

Color getColorAccent(pokeType) {
  switch (pokeType) {
    case 'bug':
      return bug;
    case 'dark':
      return dark;
    case 'dragon':
      return dragon;
    case 'electric':
      return electric;
    case 'fairy':
      return fairy;
    case 'fighting':
      return fighting;
    case 'fire':
      return fire;
    case 'flying':
      return flying;
    case 'ghost':
      return ghost;
    case 'grass':
      return grass;
    case 'ground':
      return ground;
    case 'ice':
      return ice;
    case 'normal':
      return normal;
    case 'poison':
      return poison;
    case 'psychic':
      return psychic;
    case 'rock':
      return rock;
    case 'steel':
      return steel;
    case 'water':
      return water;
    default:
      return grass;
  }
}
