// from https://github.com/zmuranaka/magic_the_gathering_flutter/tree/main

import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

/// A [Map] representing all of the known Magic: The Gathering symbols.
/// Symbols are based on the notation used in the game's
/// [Comprehensive Rules](https://magic.wizards.com/en/rules).
const Map<String, MTGSymbol> mtgSymbology = {
  '{T}': MTGSymbol(
    image: 'packages/mtg/assets/magic/T.svg',
    looseVariant: null,
    english: 'tap this permanent',
    manaValue: 0,
  ),
  '{Q}': MTGSymbol(
    image: 'packages/mtg/assets/magic/Q.svg',
    looseVariant: null,
    english: 'untap this permanent',
    manaValue: 0,
  ),
  '{E}': MTGSymbol(
    image: 'packages/mtg/assets/magic/E.svg',
    looseVariant: null,
    english: 'an energy counter',
    manaValue: 0,
  ),
  '{P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/P.svg',
    looseVariant: null,
    english: 'modal budget pawprint',
    manaValue: 0,
  ),
  '{PW}': MTGSymbol(
    image: 'packages/mtg/assets/magic/PW.svg',
    looseVariant: null,
    english: 'planeswalker',
    manaValue: 0,
  ),
  '{CHAOS}': MTGSymbol(
    image: 'packages/mtg/assets/magic/CHAOS.svg',
    looseVariant: null,
    english: 'chaos',
    manaValue: 0,
  ),
  '{A}': MTGSymbol(
    image: 'packages/mtg/assets/magic/A.svg',
    looseVariant: null,
    english: 'an acorn counter',
    manaValue: 0,
  ),
  '{TK}': MTGSymbol(
    image: 'packages/mtg/assets/magic/TK.svg',
    looseVariant: null,
    english: 'a ticket counter',
    manaValue: 0,
  ),
  '{X}': MTGSymbol(
    image: 'packages/mtg/assets/magic/X.svg',
    looseVariant: 'X',
    english: 'X generic mana',
    manaValue: 0,
  ),
  '{Y}': MTGSymbol(
    image: 'packages/mtg/assets/magic/Y.svg',
    looseVariant: 'Y',
    english: 'Y generic mana',
    manaValue: 0,
  ),
  '{Z}': MTGSymbol(
    image: 'packages/mtg/assets/magic/Z.svg',
    looseVariant: 'Z',
    english: 'Z generic mana',
    manaValue: 0,
  ),
  '{0}': MTGSymbol(
    image: 'packages/mtg/assets/magic/0.svg',
    looseVariant: '0',
    english: 'zero mana',
    manaValue: 0,
  ),
  '{½}': MTGSymbol(
    image: 'packages/mtg/assets/magic/HALF.svg',
    looseVariant: '½',
    english: 'one-half generic mana',
    manaValue: 0.5,
  ),
  '{1}': MTGSymbol(
    image: 'packages/mtg/assets/magic/1.svg',
    looseVariant: '1',
    english: 'one generic mana',
    manaValue: 1,
  ),
  '{2}': MTGSymbol(
    image: 'packages/mtg/assets/magic/2.svg',
    looseVariant: '2',
    english: 'two generic mana',
    manaValue: 2,
  ),
  '{3}': MTGSymbol(
    image: 'packages/mtg/assets/magic/3.svg',
    looseVariant: '3',
    english: 'three generic mana',
    manaValue: 3,
  ),
  '{4}': MTGSymbol(
    image: 'packages/mtg/assets/magic/4.svg',
    looseVariant: '4',
    english: 'four generic mana',
    manaValue: 4,
  ),
  '{5}': MTGSymbol(
    image: 'packages/mtg/assets/magic/5.svg',
    looseVariant: '5',
    english: 'five generic mana',
    manaValue: 5,
  ),
  '{6}': MTGSymbol(
    image: 'packages/mtg/assets/magic/6.svg',
    looseVariant: '6',
    english: 'six generic mana',
    manaValue: 6,
  ),
  '{7}': MTGSymbol(
    image: 'packages/mtg/assets/magic/7.svg',
    looseVariant: '7',
    english: 'seven generic mana',
    manaValue: 7,
  ),
  '{8}': MTGSymbol(
    image: 'packages/mtg/assets/magic/8.svg',
    looseVariant: '8',
    english: 'eight generic mana',
    manaValue: 8,
  ),
  '{9}': MTGSymbol(
    image: 'packages/mtg/assets/magic/9.svg',
    looseVariant: '9',
    english: 'nine generic mana',
    manaValue: 9,
  ),
  '{10}': MTGSymbol(
    image: 'packages/mtg/assets/magic/10.svg',
    looseVariant: '10',
    english: 'ten generic mana',
    manaValue: 10,
  ),
  '{11}': MTGSymbol(
    image: 'packages/mtg/assets/magic/11.svg',
    looseVariant: '11',
    english: 'eleven generic mana',
    manaValue: 11,
  ),
  '{12}': MTGSymbol(
    image: 'packages/mtg/assets/magic/12.svg',
    looseVariant: '12',
    english: 'twelve generic mana',
    manaValue: 12,
  ),
  '{13}': MTGSymbol(
    image: 'packages/mtg/assets/magic/13.svg',
    looseVariant: '13',
    english: 'thirteen generic mana',
    manaValue: 13,
  ),
  '{14}': MTGSymbol(
    image: 'packages/mtg/assets/magic/14.svg',
    looseVariant: '14',
    english: 'fourteen generic mana',
    manaValue: 14,
  ),
  '{15}': MTGSymbol(
    image: 'packages/mtg/assets/magic/15.svg',
    looseVariant: '15',
    english: 'fifteen generic mana',
    manaValue: 15,
  ),
  '{16}': MTGSymbol(
    image: 'packages/mtg/assets/magic/16.svg',
    looseVariant: '16',
    english: 'sixteen generic mana',
    manaValue: 16,
  ),
  '{17}': MTGSymbol(
    image: 'packages/mtg/assets/magic/17.svg',
    looseVariant: '17',
    english: 'seventeen generic mana',
    manaValue: 17,
  ),
  '{18}': MTGSymbol(
    image: 'packages/mtg/assets/magic/18.svg',
    looseVariant: '18',
    english: 'eighteen generic mana',
    manaValue: 18,
  ),
  '{19}': MTGSymbol(
    image: 'packages/mtg/assets/magic/19.svg',
    looseVariant: '19',
    english: 'nineteen generic mana',
    manaValue: 19,
  ),
  '{20}': MTGSymbol(
    image: 'packages/mtg/assets/magic/20.svg',
    looseVariant: '20',
    english: 'twenty generic mana',
    manaValue: 20,
  ),
  '{100}': MTGSymbol(
    image: 'packages/mtg/assets/magic/100.svg',
    looseVariant: '100',
    english: 'one hundred generic mana',
    manaValue: 100,
  ),
  '{1000000}': MTGSymbol(
    image: 'packages/mtg/assets/magic/1000000.svg',
    looseVariant: '1000000',
    english: 'one million generic mana',
    manaValue: 1000000,
  ),
  '{∞}': MTGSymbol(
    image: 'packages/mtg/assets/magic/INFINITY.svg',
    looseVariant: '∞',
    english: 'infinite generic mana',
    manaValue: null,
  ),
  '{W/U}': MTGSymbol(
    image: 'packages/mtg/assets/magic/WU.svg',
    looseVariant: null,
    english: 'one white or blue mana',
    manaValue: 1,
  ),
  '{W/B}': MTGSymbol(
    image: 'packages/mtg/assets/magic/WB.svg',
    looseVariant: null,
    english: 'one white or black mana',
    manaValue: 1,
  ),
  '{B/R}': MTGSymbol(
    image: 'packages/mtg/assets/magic/BR.svg',
    looseVariant: null,
    english: 'one black or red mana',
    manaValue: 1,
  ),
  '{B/G}': MTGSymbol(
    image: 'packages/mtg/assets/magic/BG.svg',
    looseVariant: null,
    english: 'one black or green mana',
    manaValue: 1,
  ),
  '{U/B}': MTGSymbol(
    image: 'packages/mtg/assets/magic/UB.svg',
    looseVariant: null,
    english: 'one blue or black mana',
    manaValue: 1,
  ),
  '{U/R}': MTGSymbol(
    image: 'packages/mtg/assets/magic/UR.svg',
    looseVariant: null,
    english: 'one blue or red mana',
    manaValue: 1,
  ),
  '{R/G}': MTGSymbol(
    image: 'packages/mtg/assets/magic/RG.svg',
    looseVariant: null,
    english: 'one red or green mana',
    manaValue: 1,
  ),
  '{R/W}': MTGSymbol(
    image: 'packages/mtg/assets/magic/RW.svg',
    looseVariant: null,
    english: 'one red or white mana',
    manaValue: 1,
  ),
  '{G/W}': MTGSymbol(
    image: 'packages/mtg/assets/magic/GW.svg',
    looseVariant: null,
    english: 'one green or white mana',
    manaValue: 1,
  ),
  '{G/U}': MTGSymbol(
    image: 'packages/mtg/assets/magic/GU.svg',
    looseVariant: null,
    english: 'one green or blue mana',
    manaValue: 1,
  ),
  '{B/G/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/BGP.svg',
    looseVariant: null,
    english: 'one black mana, one green mana, or 2 life',
    manaValue: 1,
  ),
  '{B/R/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/BRP.svg',
    looseVariant: null,
    english: 'one black mana, one red mana, or 2 life',
    manaValue: 1,
  ),
  '{G/U/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/GUP.svg',
    looseVariant: null,
    english: 'one green mana, one blue mana, or 2 life',
    manaValue: 1,
  ),
  '{G/W/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/GWP.svg',
    looseVariant: null,
    english: 'one green mana, one white mana, or 2 life',
    manaValue: 1,
  ),
  '{R/G/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/RGP.svg',
    looseVariant: null,
    english: 'one red mana, one green mana, or 2 life',
    manaValue: 1,
  ),
  '{R/W/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/RWP.svg',
    looseVariant: null,
    english: 'one red mana, one white mana, or 2 life',
    manaValue: 1,
  ),
  '{U/B/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/UBP.svg',
    looseVariant: null,
    english: 'one blue mana, one black mana, or 2 life',
    manaValue: 1,
  ),
  '{U/R/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/URP.svg',
    looseVariant: null,
    english: 'one blue mana, one red mana, or 2 life',
    manaValue: 1,
  ),
  '{W/B/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/WBP.svg',
    looseVariant: null,
    english: 'one white mana, one black mana, or 2 life',
    manaValue: 1,
  ),
  '{W/U/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/WUP.svg',
    looseVariant: null,
    english: 'one white mana, one blue mana, or 2 life',
    manaValue: 1,
  ),
  '{C/W}': MTGSymbol(
    image: 'packages/mtg/assets/magic/CW.svg',
    looseVariant: null,
    english: 'one colorless mana or one white mana',
    manaValue: 1,
  ),
  '{C/U}': MTGSymbol(
    image: 'packages/mtg/assets/magic/CU.svg',
    looseVariant: null,
    english: 'one colorless mana or one blue mana',
    manaValue: 1,
  ),
  '{C/B}': MTGSymbol(
    image: 'packages/mtg/assets/magic/CB.svg',
    looseVariant: null,
    english: 'one colorless mana or one black mana',
    manaValue: 1,
  ),
  '{C/R}': MTGSymbol(
    image: 'packages/mtg/assets/magic/CR.svg',
    looseVariant: null,
    english: 'one colorless mana or one red mana',
    manaValue: 1,
  ),
  '{C/G}': MTGSymbol(
    image: 'packages/mtg/assets/magic/CG.svg',
    looseVariant: null,
    english: 'one colorless mana or one green mana',
    manaValue: 1,
  ),
  '{2/W}': MTGSymbol(
    image: 'packages/mtg/assets/magic/2W.svg',
    looseVariant: null,
    english: 'two generic mana or one white mana',
    manaValue: 2,
  ),
  '{2/U}': MTGSymbol(
    image: 'packages/mtg/assets/magic/2U.svg',
    looseVariant: null,
    english: 'two generic mana or one blue mana',
    manaValue: 2,
  ),
  '{2/B}': MTGSymbol(
    image: 'packages/mtg/assets/magic/2B.svg',
    looseVariant: null,
    english: 'two generic mana or one black mana',
    manaValue: 2,
  ),
  '{2/R}': MTGSymbol(
    image: 'packages/mtg/assets/magic/2R.svg',
    looseVariant: null,
    english: 'two generic mana or one red mana',
    manaValue: 2,
  ),
  '{2/G}': MTGSymbol(
    image: 'packages/mtg/assets/magic/2G.svg',
    looseVariant: null,
    english: 'two generic mana or one green mana',
    manaValue: 2,
  ),
  '{H}': MTGSymbol(
    image: 'packages/mtg/assets/magic/H.svg',
    looseVariant: null,
    english: 'one colored mana or two life',
    manaValue: 1,
  ),
  '{W/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/WP.svg',
    looseVariant: null,
    english: 'one white mana or two life',
    manaValue: 1,
  ),
  '{U/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/UP.svg',
    looseVariant: null,
    english: 'one blue mana or two life',
    manaValue: 1,
  ),
  '{B/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/BP.svg',
    looseVariant: null,
    english: 'one black mana or two life',
    manaValue: 1,
  ),
  '{R/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/RP.svg',
    looseVariant: null,
    english: 'one red mana or two life',
    manaValue: 1,
  ),
  '{G/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/GP.svg',
    looseVariant: null,
    english: 'one green mana or two life',
    manaValue: 1,
  ),
  '{C/P}': MTGSymbol(
    image: 'packages/mtg/assets/magic/CP.svg',
    looseVariant: null,
    english: 'one colorless mana or two life',
    manaValue: 1,
  ),
  '{HW}': MTGSymbol(
    image: 'packages/mtg/assets/magic/HW.svg',
    looseVariant: null,
    english: 'one-half white mana',
    manaValue: 0.5,
  ),
  '{HR}': MTGSymbol(
    image: 'packages/mtg/assets/magic/HR.svg',
    looseVariant: null,
    english: 'one-half red mana',
    manaValue: 0.5,
  ),
  '{W}': MTGSymbol(
    image: 'packages/mtg/assets/magic/W.svg',
    looseVariant: 'W',
    english: 'one white mana',
    manaValue: 1,
  ),
  '{U}': MTGSymbol(
    image: 'packages/mtg/assets/magic/U.svg',
    looseVariant: 'U',
    english: 'one blue mana',
    manaValue: 1,
  ),
  '{B}': MTGSymbol(
    image: 'packages/mtg/assets/magic/B.svg',
    looseVariant: 'B',
    english: 'one black mana',
    manaValue: 1,
  ),
  '{R}': MTGSymbol(
    image: 'packages/mtg/assets/magic/R.svg',
    looseVariant: 'R',
    english: 'one red mana',
    manaValue: 1,
  ),
  '{G}': MTGSymbol(
    image: 'packages/mtg/assets/magic/G.svg',
    looseVariant: 'G',
    english: 'one green mana',
    manaValue: 1,
  ),
  '{C}': MTGSymbol(
    image: 'packages/mtg/assets/magic/C.svg',
    looseVariant: 'C',
    english: 'one colorless mana',
    manaValue: 1,
  ),
  '{S}': MTGSymbol(
    image: 'packages/mtg/assets/magic/S.svg',
    looseVariant: 'S',
    english: 'one snow mana',
    manaValue: 1,
  ),
  '{L}': MTGSymbol(
    image: 'packages/mtg/assets/magic/L.svg',
    looseVariant: 'L',
    english: 'one mana from a legendary source',
    manaValue: 1,
  ),
  '{D}': MTGSymbol(
    image: 'packages/mtg/assets/magic/D.svg',
    looseVariant: 'D',
    english: 'one potential land drop',
    manaValue: 0,
  ),
};

/// Represents a single Magic: The Gathering symbol.
///
/// See [toSvg] for a visual representation of this symbol.
class MTGSymbol {
  /// An English snippet that describes this symbol.
  /// Appropriate for use in alt text or other accessible communication formats.
  final String english;

  /// The path to the SVG asset that represents this symbol.
  final String image;

  /// An alternate version of this symbol, if it is possible to write it
  /// without curly braces.
  final String? looseVariant;

  /// The mana value of this symbol, if any. This is a [double] because some
  /// "Un" set symbols have fractional mana values.
  final double? manaValue;

  /// Creates a new [MTGSymbol] instance. [looseVariant] and [manaValue] are
  /// optional because not all [MTGSymbol] instances have them.
  const MTGSymbol({
    required this.english,
    required this.image,
    this.looseVariant,
    this.manaValue,
  });

  /// A regular expression used to find MTG symbol syntax in a [String],
  /// where that is defined as a left curly brace, followed by any number of
  /// the accepted characters, followed by a right curly brace.
  ///
  /// Note that this does not guarantee that the syntax is a valid MTG symbol,
  /// only that it matches the syntax.
  static RegExp get regex => RegExp(r'{[½∞\w\/]+}');

  /// Returns a visual representation of the [MTGSymbol] as an [SvgPicture].
  SvgPicture toSvg({double height = 16.0}) =>
      SvgPicture.asset(image, height: height, semanticsLabel: english);

  /// Allows two instances of [MTGSymbol] to be considered equal if the relevant
  /// properties are equal.
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is MTGSymbol &&
            runtimeType == other.runtimeType &&
            english == other.english &&
            image == other.image &&
            looseVariant == other.looseVariant &&
            manaValue == other.manaValue;
  }

  /// Necessary for [==] to work properly.
  @override
  int get hashCode => Object.hash(english, image, looseVariant, manaValue);
}
