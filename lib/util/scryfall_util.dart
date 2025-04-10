import 'dart:async';

import 'package:scryfall_api/scryfall_api.dart';

final ScryfallApiClient _apiClient = ScryfallApiClient();
final Map<String, MtgCard> _scryfallCardCache = {};

class ScryUtil {
  // This makes it 'snappy' ~dan
  ScryUtil._();

  static Future<MtgCard> getCardDetails(String cardId) async {
    if (_scryfallCardCache.containsKey(cardId)) {
      return _scryfallCardCache[cardId]!;
    }

    try {
      MtgCard card = await _apiClient.getCardById(cardId);
      _scryfallCardCache[cardId] = card;
      return card;
    } catch (e) {
      throw Exception("Failed to fetch card details for ID '$cardId': $e");
    }
  }

  static Future<List<MtgCard>> searchCardsByName(String name) async {
    try {
      PaginableList<MtgCard> result = await _apiClient.searchCards(
        'name:"$name"',
      );
      return result.data;
    } catch (e) {
      throw Exception("Failed to search for cards by name '$name': $e");
    }
  }

  static Future<List<MtgCard>> searchCardsByQuery(String query) async {
    try {
      PaginableList<MtgCard> result = await _apiClient.searchCards(query);
      return result.data;
    } catch (e) {
      throw Exception("Failed to search for cards with query '$query': $e");
    }
  }
}
