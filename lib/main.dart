import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:multiple_user_bloc/presentation/screens/multi_users_app.dart';
import 'core/utils/observers/app_bloc_observer.dart';
import 'package:multiple_user_bloc/core/utils/injector/injector.dart' as i;

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      i.configureInjector();
      return HydratedBlocOverrides.runZoned(
        () => runApp(
          MultiUsersApp(),
        ),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) {},
  );
}
