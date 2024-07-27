// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_settings_dao.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DeckSettingsDaoSchema = Schema(
  name: r'DeckSettingsDao',
  id: 7916446858002644255,
  properties: {
    r'shuffleCards': PropertySchema(
      id: 0,
      name: r'shuffleCards',
      type: IsarType.bool,
    )
  },
  estimateSize: _deckSettingsDaoEstimateSize,
  serialize: _deckSettingsDaoSerialize,
  deserialize: _deckSettingsDaoDeserialize,
  deserializeProp: _deckSettingsDaoDeserializeProp,
);

int _deckSettingsDaoEstimateSize(
  DeckSettingsDao object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _deckSettingsDaoSerialize(
  DeckSettingsDao object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.shuffleCards);
}

DeckSettingsDao _deckSettingsDaoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DeckSettingsDao();
  object.shuffleCards = reader.readBool(offsets[0]);
  return object;
}

P _deckSettingsDaoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DeckSettingsDaoQueryFilter
    on QueryBuilder<DeckSettingsDao, DeckSettingsDao, QFilterCondition> {
  QueryBuilder<DeckSettingsDao, DeckSettingsDao, QAfterFilterCondition>
      shuffleCardsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shuffleCards',
        value: value,
      ));
    });
  }
}

extension DeckSettingsDaoQueryObject
    on QueryBuilder<DeckSettingsDao, DeckSettingsDao, QFilterCondition> {}
