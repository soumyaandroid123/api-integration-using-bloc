import 'injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// Global variable for GetIt instance.
/// Learn more about get_it --> https://pub.dev/packages/get_it
GetIt getIt = GetIt.instance;

/// Top-Level function to register annotated dependencies with GetIt.
/// Call this func inside main func before running the App.
/// Learn more about injectable --> https://pub.dev/packages/injectable
@InjectableInit()
void configureInjector() => $initGetIt(getIt);
