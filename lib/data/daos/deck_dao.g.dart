// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_dao.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDeckDaoCollection on Isar {
  IsarCollection<DeckDao> get decks => this.collection();
}

const DeckDaoSchema = CollectionSchema(
  name: r'DeckDao',
  id: -3812488245675293785,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'pinned': PropertySchema(
      id: 1,
      name: r'pinned',
      type: IsarType.bool,
    ),
    r'settings': PropertySchema(
      id: 2,
      name: r'settings',
      type: IsarType.object,
      target: r'DeckSettingsDao',
    )
  },
  estimateSize: _deckDaoEstimateSize,
  serialize: _deckDaoSerialize,
  deserialize: _deckDaoDeserialize,
  deserializeProp: _deckDaoDeserializeProp,
  idName: r'id',
  indexes: {
    r'pinned': IndexSchema(
      id: -8913717909547348198,
      name: r'pinned',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'pinned',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'cards': LinkSchema(
      id: -7853192443908479903,
      name: r'cards',
      target: r'CardDao',
      single: false,
      linkName: r'deck',
    )
  },
  embeddedSchemas: {r'DeckSettingsDao': DeckSettingsDaoSchema},
  getId: _deckDaoGetId,
  getLinks: _deckDaoGetLinks,
  attach: _deckDaoAttach,
  version: '3.1.0+1',
);

int _deckDaoEstimateSize(
  DeckDao object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 +
      DeckSettingsDaoSchema.estimateSize(
          object.settings, allOffsets[DeckSettingsDao]!, allOffsets);
  return bytesCount;
}

void _deckDaoSerialize(
  DeckDao object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeBool(offsets[1], object.pinned);
  writer.writeObject<DeckSettingsDao>(
    offsets[2],
    allOffsets,
    DeckSettingsDaoSchema.serialize,
    object.settings,
  );
}

DeckDao _deckDaoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DeckDao(
    name: reader.readString(offsets[0]),
  );
  object.id = id;
  object.pinned = reader.readBool(offsets[1]);
  object.settings = reader.readObjectOrNull<DeckSettingsDao>(
        offsets[2],
        DeckSettingsDaoSchema.deserialize,
        allOffsets,
      ) ??
      DeckSettingsDao();
  return object;
}

P _deckDaoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<DeckSettingsDao>(
            offset,
            DeckSettingsDaoSchema.deserialize,
            allOffsets,
          ) ??
          DeckSettingsDao()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _deckDaoGetId(DeckDao object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _deckDaoGetLinks(DeckDao object) {
  return [object.cards];
}

void _deckDaoAttach(IsarCollection<dynamic> col, Id id, DeckDao object) {
  object.id = id;
  object.cards.attach(col, col.isar.collection<CardDao>(), r'cards', id);
}

extension DeckDaoQueryWhereSort on QueryBuilder<DeckDao, DeckDao, QWhere> {
  QueryBuilder<DeckDao, DeckDao, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterWhere> anyPinned() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'pinned'),
      );
    });
  }
}

extension DeckDaoQueryWhere on QueryBuilder<DeckDao, DeckDao, QWhereClause> {
  QueryBuilder<DeckDao, DeckDao, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterWhereClause> pinnedEqualTo(bool pinned) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'pinned',
        value: [pinned],
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterWhereClause> pinnedNotEqualTo(
      bool pinned) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pinned',
              lower: [],
              upper: [pinned],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pinned',
              lower: [pinned],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pinned',
              lower: [pinned],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pinned',
              lower: [],
              upper: [pinned],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DeckDaoQueryFilter
    on QueryBuilder<DeckDao, DeckDao, QFilterCondition> {
  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> pinnedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pinned',
        value: value,
      ));
    });
  }
}

extension DeckDaoQueryObject
    on QueryBuilder<DeckDao, DeckDao, QFilterCondition> {
  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> settings(
      FilterQuery<DeckSettingsDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'settings');
    });
  }
}

extension DeckDaoQueryLinks
    on QueryBuilder<DeckDao, DeckDao, QFilterCondition> {
  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> cards(
      FilterQuery<CardDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'cards');
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> cardsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'cards', length, true, length, true);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> cardsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'cards', 0, true, 0, true);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> cardsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'cards', 0, false, 999999, true);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> cardsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'cards', 0, true, length, include);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> cardsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'cards', length, include, 999999, true);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterFilterCondition> cardsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'cards', lower, includeLower, upper, includeUpper);
    });
  }
}

extension DeckDaoQuerySortBy on QueryBuilder<DeckDao, DeckDao, QSortBy> {
  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> sortByPinned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinned', Sort.asc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> sortByPinnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinned', Sort.desc);
    });
  }
}

extension DeckDaoQuerySortThenBy
    on QueryBuilder<DeckDao, DeckDao, QSortThenBy> {
  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> thenByPinned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinned', Sort.asc);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QAfterSortBy> thenByPinnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinned', Sort.desc);
    });
  }
}

extension DeckDaoQueryWhereDistinct
    on QueryBuilder<DeckDao, DeckDao, QDistinct> {
  QueryBuilder<DeckDao, DeckDao, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeckDao, DeckDao, QDistinct> distinctByPinned() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pinned');
    });
  }
}

extension DeckDaoQueryProperty
    on QueryBuilder<DeckDao, DeckDao, QQueryProperty> {
  QueryBuilder<DeckDao, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DeckDao, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DeckDao, bool, QQueryOperations> pinnedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pinned');
    });
  }

  QueryBuilder<DeckDao, DeckSettingsDao, QQueryOperations> settingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'settings');
    });
  }
}
