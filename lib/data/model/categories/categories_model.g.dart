// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) =>
    _CategoriesModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      icon: json['icon'] as String,
      totalCourses: (json['totalCourses'] as num).toInt(),
    );

Map<String, dynamic> _$CategoriesModelToJson(_CategoriesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon': instance.icon,
      'totalCourses': instance.totalCourses,
    };
