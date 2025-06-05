import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'core/dependencies.dart';
import 'core/routing/router.dart';
import 'features/kurslar/kurs_barchasi/courses_bloc.dart';
import 'data/repository/courses_repository.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const ForWoman());
}

class ForWoman extends StatelessWidget {
  const ForWoman({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MultiProvider(
          providers: providers,
          child: Builder(
            builder: (context) {
              return BlocProvider(
                create: (_) => CoursesBloc(
                  coursesRepo: context.read<CoursesRepository>(),
                ),
                child: MaterialApp.router(
                  routerConfig: router,
                  debugShowCheckedModeBanner: false,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
