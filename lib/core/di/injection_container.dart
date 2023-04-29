import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_container.config.dart';

// Create a global instance of GetIt.
GetIt getIt = GetIt.instance;

// Initialize the dependency injection system using the injectable package.
@injectableInit
Future<GetIt> configure() async => getIt.init();
