# 1.0.3

* Fixed svg paths for mana symbols to ensure they are correctly displayed in the app.

# 1.0.2

* Added two new parsing functions:
    * `parsePowerToughness`: Parses power/toughness strings (like `2/3` or `*/4`) and returns formatted TextSpan
    * `parseLoyalty`: Parses planeswalker loyalty values and returns formatted TextSpan
* Updated package constraints

# 1.0.1

* Added two new parsing functions:
    * `parseManaCostString`: Converts MTG mana cost strings (like `{3}{W}{U}`) into a list of widget representations
      using SVG assets
    * `parseOracleTextString`: Parses Oracle text with embedded mana symbols, returning a TextSpan with proper symbol
      rendering

# 1.0.0

* Initial Release
* Added MTG symbology handling
* Included SVG assets for all standard MTG mana symbols