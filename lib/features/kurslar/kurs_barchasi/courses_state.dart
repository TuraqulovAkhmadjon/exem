import 'package:exem/data/model/courses/courses_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_state.freezed.dart';

enum CoursesStatus { idle, loading, success, error }
@freezed
abstract class CoursesState with _$CoursesState {
  const factory CoursesState({
    required List<CoursesModel> courses,
    required CoursesStatus status,
    int? selectedCategoryId,
  }) = _CoursesState;

  factory CoursesState.initial() {
    return CoursesState(
      courses: [],
      status: CoursesStatus.idle,
      selectedCategoryId: null,
    );
  }
}

