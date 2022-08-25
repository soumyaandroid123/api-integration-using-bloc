import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_user_bloc/core/utils/theme/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';
import 'home-screen.dart';
import 'package:multiple_user_bloc/core/utils/injector/injector.dart' as i;
import '../../application/bloc/user-login/user_bloc.dart';


class MultiUsersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Sizer(
      builder: (context, _, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => i.getIt<UserBloc>(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "",
            theme: AppTheme.lightTheme,
            builder: (context, child) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, child!),
            ),
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}
