import 'package:exem/data/repository/categiries_repository.dart';
import 'package:exem/data/repository/courses_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repository/auth_repository.dart';
import '../data/repository/interview_repository.dart';
import '../data/repository/social_media_repository.dart';
import '../features/kurslar/kurs_barchasi/courses_bloc.dart';
import 'client.dart';

final List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => AuthRepository(client: context.read())),
  Provider(create: (context) => CategoriesRepository(client: context.read())),
  Provider(create: (context) => InterviewRepository(client: context.read())),
  Provider(create: (context) => SocialMediaRepository(client: context.read())),
  Provider(create: (context) => CoursesRepository(client: context.read())),

  ProxyProvider<CoursesRepository, CoursesBloc>(
    update: (context, coursesRepo, previousBloc) =>
        previousBloc ?? CoursesBloc(coursesRepo: coursesRepo),
    dispose: (context, bloc) => bloc.close(),
  ),
];
