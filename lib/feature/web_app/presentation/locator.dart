import 'package:get_it/get_it.dart';

import '../../../core/service/navigationService.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  // locator.registerLazySingleton(() => Api());
}
