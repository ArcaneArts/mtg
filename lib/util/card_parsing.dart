import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mtg/util/symbology.dart';

/// Parses a mana cost string and returns a list of widgets representing the mana symbols.
///
/// Example:
/// ```dart
/// List<Widget>? symbols = parseManaCostString('{3}{W}{U}');
/// ```
///
/// Returns `null` if the input string is `null` or doesn't contain any valid MTG symbols.
List<Widget>? parseManaCostString(
  String? manaCost, {
  EdgeInsets? padding = const EdgeInsets.symmetric(horizontal: 1.5),
}) {
  if (manaCost == null) {
    return null;
  }

  Iterable<RegExpMatch> matches = MTGSymbol.regex.allMatches(manaCost);
  if (matches.isEmpty) {
    return null;
  }

  List<Widget> manaCostSymbols = <Widget>[];
  for (RegExpMatch match in matches) {
    String? matchedSymbol = match.group(0);
    final MTGSymbol? mtgSymbol = mtgSymbology[matchedSymbol];
    if (mtgSymbol == null) {
      throw ArgumentError.value(
        matchedSymbol,
        'matchedSymbol',
        'Unexpected MTG symbol',
      );
    }
    SvgPicture svg = mtgSymbol.toSvg();
    manaCostSymbols.add(
      padding == null ? svg : Padding(padding: padding, child: svg),
    );
  }
  return manaCostSymbols;
}

/// Parses an OracleText string and returns a TextSpan with embedded mana symbols and other MTG symbols.
///
/// Example:
/// ```dart
/// TextSpan? span = parseOracleTextString('Add {W} or {U}, then {T} to untap.');
/// ```
///
/// Returns `null` if the input string is `null`.
TextSpan? parseOracleTextString(String? oracleText) {
  if (oracleText == null) {
    return null;
  }

  Iterable<RegExpMatch> matches = MTGSymbol.regex.allMatches(oracleText);
  if (matches.isEmpty) {
    return TextSpan(text: oracleText);
  }

  final List<InlineSpan> children = [];
  int lastIndex = 0;
  for (RegExpMatch match in matches) {
    children.add(TextSpan(text: oracleText.substring(lastIndex, match.start)));
    String? matchedSymbol = match.group(0);
    final MTGSymbol? mtgSymbol = mtgSymbology[matchedSymbol];
    if (mtgSymbol == null) {
      throw ArgumentError.value(
        matchedSymbol,
        'matchedSymbol',
        'Unexpected MTG symbol',
      );
    }
    children.add(
      WidgetSpan(child: mtgSymbol.toSvg(height: 14.0)),
    ); // Smaller for inline text
    lastIndex = match.end;
  }
  children.add(TextSpan(text: oracleText.substring(lastIndex)));
  return TextSpan(children: children);
}

/// Parses a power/toughness string (e.g., "2/3", "*/4") and returns a TextSpan.
///
/// Returns `null` if the input is `null` or invalid.
TextSpan? parsePowerToughness(String? powerToughness) {
  if (powerToughness == null) return null;

  final RegExp ptRegex = RegExp(r'([*\d]+|\*)/([*\d]+|\*)');
  RegExpMatch? match = ptRegex.firstMatch(powerToughness);
  if (match == null) {
    return TextSpan(text: powerToughness); // Fallback to plain text
  }

  String? power = match.group(1);
  String? toughness = match.group(2);
  return TextSpan(
    text: '$power / $toughness',
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}

/// Parses a loyalty value (e.g., "3", "X") and returns a TextSpan.
///
/// Returns `null` if the input is `null`.
TextSpan? parseLoyalty(String? loyalty) {
  if (loyalty == null) return null;

  return TextSpan(
    text: loyalty,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}
