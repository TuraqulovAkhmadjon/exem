part of 'courses_bloc.dart';

sealed class CoursesEvent {}

final class CoursesLoad extends CoursesEvent {
  final int? categoryId;

  CoursesLoad({this.categoryId});
}
