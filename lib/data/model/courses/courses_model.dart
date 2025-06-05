import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_model.freezed.dart';
part 'courses_model.g.dart';

@freezed
abstract class CoursesModel with _$CoursesModel {
  const factory CoursesModel({
    required int id,
    required String user,
    required String category,
    required String title,
    required String image,
    required int price,
    required double rating,
    String? status,
  }) = _CoursesModel;

  factory CoursesModel.fromJson(Map<String, dynamic> json) =>
      _$CoursesModelFromJson(json);
}
