import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
abstract class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    required int id,
    required String title,
    required String icon,
    required int totalCourses,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => _$CategoriesModelFromJson(json);
}
