import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/core/di/injectable.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> conigureInjection() async {
  await $initGetIt(getIt, environment: Environment.prod);
}
