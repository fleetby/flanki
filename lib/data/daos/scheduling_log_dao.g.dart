// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduling_log_dao.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSchedulingLogDaoCollection on Isar {
  IsarCollection<SchedulingLogDao> get schedulingLogs => this.collection();
}

const SchedulingLogDaoSchema = CollectionSchema(
  name: r'SchedulingLogDao',
  id: -3008458998709859591,
  properties: {
    r'dateTime': PropertySchema(
      id: 0,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'new_': PropertySchema(
      id: 1,
      name: r'new_',
      type: IsarType.object,
      target: r'SchedulingInfoDao',
    ),
    r'old': PropertySchema(
      id: 2,
      name: r'old',
      type: IsarType.object,
      target: r'SchedulingInfoDao',
    ),
    r'rate': PropertySchema(
      id: 3,
      name: r'rate',
      type: IsarType.string,
      enumMap: _SchedulingLogDaorateEnumValueMap,
    )
  },
  estimateSize: _schedulingLogDaoEstimateSize,
  serialize: _schedulingLogDaoSerialize,
  deserialize: _schedulingLogDaoDeserialize,
  deserializeProp: _schedulingLogDaoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'card': LinkSchema(
      id: -4039085844513603457,
      name: r'card',
      target: r'CardDao',
      single: true,
    )
  },
  embeddedSchemas: {r'SchedulingInfoDao': SchedulingInfoDaoSchema},
  getId: _schedulingLogDaoGetId,
  getLinks: _schedulingLogDaoGetLinks,
  attach: _schedulingLogDaoAttach,
  version: '3.1.0+1',
);

int _schedulingLogDaoEstimateSize(
  SchedulingLogDao object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.new_;
    if (value != null) {
      bytesCount += 3 +
          SchedulingInfoDaoSchema.estimateSize(
              value, allOffsets[SchedulingInfoDao]!, allOffsets);
    }
  }
  {
    final value = object.old;
    if (value != null) {
      bytesCount += 3 +
          SchedulingInfoDaoSchema.estimateSize(
              value, allOffsets[SchedulingInfoDao]!, allOffsets);
    }
  }
  {
    final value = object.rate;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  return bytesCount;
}

void _schedulingLogDaoSerialize(
  SchedulingLogDao object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateTime);
  writer.writeObject<SchedulingInfoDao>(
    offsets[1],
    allOffsets,
    SchedulingInfoDaoSchema.serialize,
    object.new_,
  );
  writer.writeObject<SchedulingInfoDao>(
    offsets[2],
    allOffsets,
    SchedulingInfoDaoSchema.serialize,
    object.old,
  );
  writer.writeString(offsets[3], object.rate?.name);
}

SchedulingLogDao _schedulingLogDaoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SchedulingLogDao();
  object.dateTime = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.new_ = reader.readObjectOrNull<SchedulingInfoDao>(
    offsets[1],
    SchedulingInfoDaoSchema.deserialize,
    allOffsets,
  );
  object.old = reader.readObjectOrNull<SchedulingInfoDao>(
    offsets[2],
    SchedulingInfoDaoSchema.deserialize,
    allOffsets,
  );
  object.rate =
      _SchedulingLogDaorateValueEnumMap[reader.readStringOrNull(offsets[3])];
  return object;
}

P _schedulingLogDaoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<SchedulingInfoDao>(
        offset,
        SchedulingInfoDaoSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<SchedulingInfoDao>(
        offset,
        SchedulingInfoDaoSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (_SchedulingLogDaorateValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SchedulingLogDaorateEnumValueMap = {
  r'again': r'again',
  r'hard': r'hard',
  r'good': r'good',
};
const _SchedulingLogDaorateValueEnumMap = {
  r'again': CardRate.again,
  r'hard': CardRate.hard,
  r'good': CardRate.good,
};

Id _schedulingLogDaoGetId(SchedulingLogDao object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _schedulingLogDaoGetLinks(SchedulingLogDao object) {
  return [object.card];
}

void _schedulingLogDaoAttach(
    IsarCollection<dynamic> col, Id id, SchedulingLogDao object) {
  object.id = id;
  object.card.attach(col, col.isar.collection<CardDao>(), r'card', id);
}

extension SchedulingLogDaoQueryWhereSort
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QWhere> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SchedulingLogDaoQueryWhere
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QWhereClause> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterWhereClause> idBetween(
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

extension SchedulingLogDaoQueryFilter
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QFilterCondition> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      dateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      dateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      dateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      dateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      dateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      dateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      new_IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'new_',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      new_IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'new_',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      oldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'old',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      oldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'old',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rate',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rate',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateEqualTo(
    CardRate? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateGreaterThan(
    CardRate? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateLessThan(
    CardRate? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateBetween(
    CardRate? lower,
    CardRate? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rate',
        value: '',
      ));
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      rateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rate',
        value: '',
      ));
    });
  }
}

extension SchedulingLogDaoQueryObject
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QFilterCondition> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition> new_(
      FilterQuery<SchedulingInfoDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'new_');
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition> old(
      FilterQuery<SchedulingInfoDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'old');
    });
  }
}

extension SchedulingLogDaoQueryLinks
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QFilterCondition> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition> card(
      FilterQuery<CardDao> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'card');
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterFilterCondition>
      cardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'card', 0, true, 0, true);
    });
  }
}

extension SchedulingLogDaoQuerySortBy
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QSortBy> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy>
      sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy>
      sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy> sortByRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.asc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy>
      sortByRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.desc);
    });
  }
}

extension SchedulingLogDaoQuerySortThenBy
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QSortThenBy> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy>
      thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy>
      thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy> thenByRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.asc);
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QAfterSortBy>
      thenByRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.desc);
    });
  }
}

extension SchedulingLogDaoQueryWhereDistinct
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QDistinct> {
  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QDistinct>
      distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingLogDao, QDistinct> distinctByRate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rate', caseSensitive: caseSensitive);
    });
  }
}

extension SchedulingLogDaoQueryProperty
    on QueryBuilder<SchedulingLogDao, SchedulingLogDao, QQueryProperty> {
  QueryBuilder<SchedulingLogDao, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SchedulingLogDao, DateTime?, QQueryOperations>
      dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingInfoDao?, QQueryOperations>
      new_Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'new_');
    });
  }

  QueryBuilder<SchedulingLogDao, SchedulingInfoDao?, QQueryOperations>
      oldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'old');
    });
  }

  QueryBuilder<SchedulingLogDao, CardRate?, QQueryOperations> rateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rate');
    });
  }
}
