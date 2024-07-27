import 'package:flanki/get.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final get = GetIt.instance;

@injectableInit
Future<void> registerDependencies() async {
  await get.allReady();
  await get.init();
}
