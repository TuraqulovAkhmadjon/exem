import 'package:exem/core/routing/routes.dart';
import 'package:exem/features/auht/register.dart';
import 'package:exem/features/auht/pages/sign_up/sign_up_view.dart';
import 'package:exem/features/auht/reset_password.dart';
import 'package:exem/features/auht/smc_code.dart';
import 'package:exem/features/auht/splash_creen.dart';
import 'package:exem/features/home/managers/home_bloc.dart';
import 'package:exem/features/kurslar/kurs_barchasi/courses_bloc.dart';
import 'package:exem/features/kurslar/kurslarview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/auht/maneger/login/login_bloc.dart';
import '../../features/auht/pages/login/login_view.dart';
import '../../features/home/pages/home_view.dart';
import '../../main.dart';

final router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: Routes.login,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => BlocProvider(
        create: (context) => LoginBloc(repo: context.read()),
        child: LoginView(),
      ),
    ),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => SplashCreen(),
    ),
    GoRoute(path: Routes.signUp, builder: (context, state) => SignUpView()),
    GoRoute(
      path: Routes.resetPassword,
      builder: (context, state) => ResetPassword(),
    ),
    GoRoute(path: Routes.register, builder: (context, state) => RegisterView()),
    GoRoute(path: Routes.smsCode, builder: (context, state) => SmsCodeView()),
    GoRoute(
      path: Routes.kurslar,
      builder: (context, state) => BlocProvider(
        create: (context) => CoursesBloc(coursesRepo: context.read()),
        child: Kurslar(),
      ),
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeBloc(
          cateRepo: context.read(),
          interviewRepo: context.read(),
          socialMediaRepo: context.read(),
        ),
        child: HomeView(),
      ),
    ),
  ],
);
