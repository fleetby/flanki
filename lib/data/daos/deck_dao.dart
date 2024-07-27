import 'package:flanki/data/daos/card_dao.dart';
import 'package:flanki/data/daos/deck_settings_dao.dart';
import 'package:isar/isar.dart';

part 'deck_dao.g.dart';

@Collection(accessor: 'decks')
class DeckDao {
  DeckDao({required this.name});

  Id id = Isar.autoIncrement;

  String name = '';

  @Backlink(to: 'deck')
  final cards = IsarLinks<CardDao>();

  DeckSettingsDao settings = DeckSettingsDao();
}
