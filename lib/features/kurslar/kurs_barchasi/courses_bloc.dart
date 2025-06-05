import 'package:exem/data/repository/courses_repository.dart';
import 'package:exem/features/kurslar/kurs_barchasi/courses_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'courses_event.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final CoursesRepository _coursesRepo;

  CoursesBloc({required CoursesRepository coursesRepo})
      : _coursesRepo = coursesRepo,
        super(CoursesState.initial()) {
    on<CoursesLoad>(_onLoad);

    add(CoursesLoad());
  }

  Future<void> _onLoad(CoursesLoad event, Emitter<CoursesState> emit) async {
    emit(state.copyWith(status: CoursesStatus.loading));
    try {
      final allCourses = await _coursesRepo.getCourses();

      final filtered = event.categoryId != null
          ? allCourses
          .where((course) => course.category == event.categoryId)
          .toList()
          : allCourses;

      emit(state.copyWith(
        courses: filtered,
        status: CoursesStatus.success,
        selectedCategoryId: event.categoryId,
      ));
    } catch (e) {
      emit(state.copyWith(status: CoursesStatus.error));
    }
  }
}
