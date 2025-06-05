import 'package:exem/data/model/courses/courses_model.dart';

import '../../core/client.dart';

class CoursesRepository {
  final ApiClient client;

  CoursesRepository({required this.client});

  Future<List<CoursesModel>> getCourses([int? limit, int? page]) async {
    var rawCourses = await client.genericGetRequest<List<dynamic>>(
      '/courses/list',
    );
    return rawCourses
        .map((category) => CoursesModel.fromJson(category))
        .toList();
  }
}
