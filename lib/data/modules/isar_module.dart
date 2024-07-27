import 'package:flanki/data/daos/card_dao.dart';
import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/daos/scheduling_log_dao.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class IsarModule {
  @preResolve
  Future<Isar> get isar async => Isar.open(
        [
          DeckDaoSchema,
          CardDaoSchema,
          SchedulingLogDaoSchema,
        ],
        directory: (await getApplicationDocumentsDirectory()).path,
      );
}
