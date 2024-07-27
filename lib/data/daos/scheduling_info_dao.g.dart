// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduling_info_dao.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SchedulingInfoDaoSchema = Schema(
  name: r'SchedulingInfoDao',
  id: 2736144820700879533,
  properties: {
    r'easeFactor': PropertySchema(
      id: 0,
      name: r'easeFactor',
      type: IsarType.double,
    ),
    r'interval': PropertySchema(
      id: 1,
      name: r'interval',
      type: IsarType.long,
    ),
    r'nextRepetitionAt': PropertySchema(
      id: 2,
      name: r'nextRepetitionAt',
      type: IsarType.dateTime,
    ),
    r'ratedAt': PropertySchema(
      id: 3,
      name: r'ratedAt',
      type: IsarType.dateTime,
    ),
    r'repetitions': PropertySchema(
      id: 4,
      name: r'repetitions',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 5,
      name: r'status',
      type: IsarType.byte,
      enumMap: _SchedulingInfoDaostatusEnumValueMap,
    )
  },
  estimateSize: _schedulingInfoDaoEstimateSize,
  serialize: _schedulingInfoDaoSerialize,
  deserialize: _schedulingInfoDaoDeserialize,
  deserializeProp: _schedulingInfoDaoDeserializeProp,
);

int _schedulingInfoDaoEstimateSize(
  SchedulingInfoDao object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _schedulingInfoDaoSerialize(
  SchedulingInfoDao object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.easeFactor);
  writer.writeLong(offsets[1], object.interval);
  writer.writeDateTime(offsets[2], object.nextRepetitionAt);
  writer.writeDateTime(offsets[3], object.ratedAt);
  writer.writeLong(offsets[4], object.repetitions);
  writer.writeByte(offsets[5], object.status.index);
}

SchedulingInfoDao _schedulingInfoDaoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SchedulingInfoDao();
  object.easeFactor = reader.readDouble(offsets[0]);
  object.interval = reader.readLong(offsets[1]);
  object.nextRepetitionAt = reader.readDateTimeOrNull(offsets[2]);
  object.ratedAt = reader.readDateTimeOrNull(offsets[3]);
  object.repetitions = reader.readLong(offsets[4]);
  object.status =
      _SchedulingInfoDaostatusValueEnumMap[reader.readByteOrNull(offsets[5])] ??
          CardStatus.initial;
  return object;
}

P _schedulingInfoDaoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (_SchedulingInfoDaostatusValueEnumMap[
              reader.readByteOrNull(offset)] ??
          CardStatus.initial) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SchedulingInfoDaostatusEnumValueMap = {
  'initial': 0,
  'learning': 1,
  'review': 2,
};
const _SchedulingInfoDaostatusValueEnumMap = {
  0: CardStatus.initial,
  1: CardStatus.learning,
  2: CardStatus.review,
};

extension SchedulingInfoDaoQueryFilter
    on QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QFilterCondition> {
  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      easeFactorEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      easeFactorGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      easeFactorLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      easeFactorBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'easeFactor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      intervalEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'interval',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      intervalGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'interval',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      intervalLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'interval',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      intervalBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'interval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      nextRepetitionAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nextRepetitionAt',
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      nextRepetitionAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nextRepetitionAt',
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      nextRepetitionAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextRepetitionAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      nextRepetitionAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nextRepetitionAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      nextRepetitionAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nextRepetitionAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      nextRepetitionAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nextRepetitionAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      ratedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ratedAt',
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      ratedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ratedAt',
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      ratedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      ratedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ratedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      ratedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ratedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      ratedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ratedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      repetitionsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repetitions',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      repetitionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repetitions',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      repetitionsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repetitions',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      repetitionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repetitions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      statusEqualTo(CardStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      statusGreaterThan(
    CardStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      statusLessThan(
    CardStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QAfterFilterCondition>
      statusBetween(
    CardStatus lower,
    CardStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SchedulingInfoDaoQueryObject
    on QueryBuilder<SchedulingInfoDao, SchedulingInfoDao, QFilterCondition> {}
