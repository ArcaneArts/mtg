# MTG Flutter

A comprehensive Flutter package for Magic: The Gathering card rendering, mana symbol display, and text parsing - built for Flutter applications.

[![Pub Version](https://img.shields.io/pub/v/mtg.svg)](https://pub.dev/packages/mtg)

## Overview

This package provides tools for rendering Magic: The Gathering cards, mana symbols, and Oracle text in Flutter applications. It includes parsing functions for mana costs and card text, and utilizes SVG assets for high-quality symbol rendering. That being said, this is just what i need for making magic cards, and the other libraries, like magic_the_gathering_flutter, do absolutely nothing. and are convoluted to try and use, without bending over backwards to get them to work.

## Features

- 🃏 Parse and display MTG mana costs as Flutter widgets
- 📝 Parse Oracle text with embedded mana symbols 
- 💪 Parse power/toughness values for creatures
- ⚔️ Parse loyalty values for planeswalkers
- 🎨 High-quality SVG rendering of all mana symbols
- 🧩 Modular design for easy integration

## Installation

Add the dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  mtg: ^1.0.2
```

Run the following command:

```bash
flutter pub get
```

## Usage

### Parsing Mana Cost Strings

Use the `parseManaCostString` function to render mana costs as a list of widgets:

```dart
import 'package:mtg/mtg.dart';

// Parse a mana cost and get a list of Widgets
List<Widget>? symbols = parseManaCostString('{3}{W}{U}');

// Use these widgets in a Row
Row(
  children: parseManaCostString('{2}{B}{B}') ?? [],
)

// Customize padding between symbols
List<Widget>? symbols = parseManaCostString(
  '{1}{R}{R}',
  padding: const EdgeInsets.symmetric(horizontal: 2.0),
);
```

### Parsing Oracle Text with Symbols

Use the `parseOracleTextString` function to parse Oracle text with embedded mana symbols:

```dart
import 'package:mtg/mtg.dart';
import 'package:flutter/material.dart';

// Parse Oracle text to get a TextSpan with embedded symbols
TextSpan? textSpan = parseOracleTextString('Add {W} or {U} to your mana pool.');

// Use the TextSpan in a RichText widget
RichText(
  text: parseOracleTextString('Tap: Add {R}. Activate only if you control a Mountain.') 
      ?? const TextSpan(text: ''),
)
```

### Parsing Power/Toughness and Loyalty

Use the dedicated functions to parse power/toughness and loyalty values:

```dart
import 'package:mtg/mtg.dart';
import 'package:flutter/material.dart';

// Parse power/toughness for creatures
TextSpan? ptSpan = parsePowerToughness('2/3');
TextSpan? variablePt = parsePowerToughness('*/4');

// Parse loyalty for planeswalkers
TextSpan? loyaltySpan = parseLoyalty('3');
TextSpan? variableLoyalty = parseLoyalty('X');

// Use in RichText widgets
RichText(
  text: parsePowerToughness('2/3') ?? const TextSpan(text: ''),
)
```

## Supported Symbols

This package supports all standard Magic: The Gathering mana symbols, including:

- Basic mana symbols: {W}, {U}, {B}, {R}, {G}
- Generic mana: {0} through {20}, plus {100} and {1000000}
- Hybrid mana: {W/U}, {W/B}, etc.
- Phyrexian mana: {W/P}, {U/P}, etc.
- Special symbols: {T} (tap), {Q} (untap), {E} (energy), and more

## Example

```dart
import 'package:flutter/material.dart';
import 'package:mtg/mtg.dart';

class CardTextView extends StatelessWidget {
  final String manaCost;
  final String oracleText;

  const CardTextView({
    Key? key,
    required this.manaCost,
    required this.oracleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: parseManaCostString(manaCost) ?? [],
        ),
        const SizedBox(height: 8),
        RichText(
          text: parseOracleTextString(oracleText) ?? const TextSpan(text: ''),
        ),
      ],
    );
  }
}
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. This is a GNU project, and all contributions should be made under the same license.