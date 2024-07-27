// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_dao.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardDaoCollection on Isar {
  IsarCollection<CardDao> get cards => this.collection();
}

const CardDaoSchema = CollectionSchema(
  name: r'CardDao',
  id: -630575458803045805,
  properties: {
    r'backNote': PropertySchema(
      id: 0,
      name: r'backNote',
      type: IsarType.object,
      target: r'NoteDao',
    ),
    r'frontNote': PropertySchema(
      id: 1,
      name: r'frontNote',
      type: IsarType.object,
      target: r'NoteDao',
    ),
    r'schedulingInfo': PropertySchema(
      id: 2,
      name: r'schedulingInfo',
      type: IsarType.object,
      target: r'SchedulingInfoDao',
    )
  },
  estimateSize: _cardDaoEstimateSize,
  serialize: _cardDaoSerialize,
  deserialize: _cardDaoDeserialize,
  deserializeProp: _cardDaoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'deck': LinkSchema(
      id: 2210053312293184038,
      name: r'deck',
      target: r'DeckDao',
      single: true,
    )
  },
  embeddedSchemas: {
    r'NoteDao': NoteDaoSchema,
    r'SchedulingInfoDao': SchedulingInfoDaoSchema
  },
  getId: _cardDaoGetId,
  getLinks: _cardDaoGetLinks,
  attach: _cardDaoAttach,
  version: '3.1.0+1',
);

int _cardDaoEstimateSize(
  CardDao object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      NoteDaoSchema.estimateSize(
          object.backNote, allOffsets[NoteDao]!, allOffsets);
  bytesCount += 3 +
      NoteDaoSchema.estimateSize(
          object.frontNote, allOffsets[NoteDao]!, allOffsets);
  {
    final value = object.schedulingInfo;
    if (value != null) {
      bytesCount += 3 +
          SchedulingInfoDaoSchema.estimateSize(
              value, allOffsets[SchedulingInfoDao]!, allOffsets);
    }
  }
  return bytesCount;
}

void _cardDaoSerialize(
  CardDao object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<NoteDao>(
    offsets[0],
    allOffsets,
    NoteDaoSchema.serialize,
    object.backNote,
  );
  writer.writeObject<NoteDao>(
    offsets[1],
    allOffsets,
    NoteDaoSchema.serialize,
    object.frontNote,
  );
  writer.writeObject<SchedulingInfoDao>(
    offsets[2],
    allOffsets,
    SchedulingInfoDaoSchema.serialize,
    object.schedulingInfo,
  );
}

CardDao _cardDaoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardDao();
  object.backNote = reader.readObjectOrNull<NoteDao>(
        offsets[0],
        NoteDaoSchema.deserialize,
        allOffsets,
      ) ??
      NoteDao();
  object.frontNote = reader.readObjectOrNull<NoteDao>(
        offsets[1],
        NoteDaoSchema.deserialize,
        allOffsets,
      ) ??
      NoteDao();
  object.id = id;
  object.schedulingInfo = reader.readObjectOrNull<SchedulingInfoDao>(
    offsets[2],
    SchedulingInfoDaoSchema.deserialize,
    allOffsets,
  );
  return object;
}

P _cardDaoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<NoteDao>(
            offset,
            NoteDaoSchema.deserialize,
            allOffsets,
          ) ??
          NoteDao()) as P;
    case 1:
      return (reader.readObjectOrNull<NoteDao>(
            offset,
            NoteDaoSchema.deserialize,
            allOffsets,
          ) ??
          NoteDao()) as P;
    case 2:
      return (reader.readObjectOrNull<SchedulingInfoDao>(
        offset,
        SchedulingInfoDaoSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cardDaoGetId(CardDao object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardDaoGetLinks(CardDao object) {
  return [object.deck];
}

void _cardDaoAttach(IsarCollection<dynamic> col, Id id, CardDao object) {
  object.id = id;
  object.deck.attach(col, col.isar.collection<DeckDao>(), r'deck', id);
}

extension CardDaoQueryWhereSort on QueryBuilder<CardDao, CardDao, QWhere> {
  QueryBuilder<CardDao, CardDao, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardDaoQueryWhere on QueryBuilder<CardDao, CardDao, QWhereClause> {
  QueryBuilder<CardDao, CardDao, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CardDao, CardDao, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterWhereClause> idBetween(
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
}

extension CardDaoQueryFilter
    on QueryBuilder<CardDao, CardDao, QFilterCondition> {
  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> schedulingInfoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'schedulingInfo',
      ));
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition>
      schedulingInfoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'schedulingInfo',
      ));
    });
  }
}

extension CardDaoQueryObject
    on QueryBuilder<CardDao, CardDao, QFilterCondition> {
  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> backNote(
      FilterQuery<NoteDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'backNote');
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> frontNote(
      FilterQuery<NoteDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'frontNote');
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> schedulingInfo(
      FilterQuery<SchedulingInfoDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'schedulingInfo');
    });
  }
}

extension CardDaoQueryLinks
    on QueryBuilder<CardDao, CardDao, QFilterCondition> {
  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> deck(
      FilterQuery<DeckDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'deck');
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterFilterCondition> deckIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'deck', 0, true, 0, true);
    });
  }
}

extension CardDaoQuerySortBy on QueryBuilder<CardDao, CardDao, QSortBy> {}

extension CardDaoQuerySortThenBy
    on QueryBuilder<CardDao, CardDao, QSortThenBy> {
  QueryBuilder<CardDao, CardDao, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CardDao, CardDao, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CardDaoQueryWhereDistinct
    on QueryBuilder<CardDao, CardDao, QDistinct> {}

extension CardDaoQueryProperty
    on QueryBuilder<CardDao, CardDao, QQueryProperty> {
  QueryBuilder<CardDao, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CardDao, NoteDao, QQueryOperations> backNoteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backNote');
    });
  }

  QueryBuilder<CardDao, NoteDao, QQueryOperations> frontNoteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frontNote');
    });
  }

  QueryBuilder<CardDao, SchedulingInfoDao?, QQueryOperations>
      schedulingInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schedulingInfo');
    });
  }
}
