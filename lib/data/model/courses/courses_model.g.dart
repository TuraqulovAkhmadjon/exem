// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoursesModel _$CoursesModelFromJson(Map<String, dynamic> json) =>
    _CoursesModel(
      id: (json['id'] as num).toInt(),
      user: json['user'] as String,
      category: json['category'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$CoursesModelToJson(_CoursesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'category': instance.category,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'rating': instance.rating,
      'status': instance.status,
    };
