// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoriesModel {

 int get id; String get title; String get icon; int get totalCourses;
/// Create a copy of CategoriesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesModelCopyWith<CategoriesModel> get copyWith => _$CategoriesModelCopyWithImpl<CategoriesModel>(this as CategoriesModel, _$identity);

  /// Serializes this CategoriesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.totalCourses, totalCourses) || other.totalCourses == totalCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,icon,totalCourses);

@override
String toString() {
  return 'CategoriesModel(id: $id, title: $title, icon: $icon, totalCourses: $totalCourses)';
}


}

/// @nodoc
abstract mixin class $CategoriesModelCopyWith<$Res>  {
  factory $CategoriesModelCopyWith(CategoriesModel value, $Res Function(CategoriesModel) _then) = _$CategoriesModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String icon, int totalCourses
});




}
/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._self, this._then);

  final CategoriesModel _self;
  final $Res Function(CategoriesModel) _then;

/// Create a copy of CategoriesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? icon = null,Object? totalCourses = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,totalCourses: null == totalCourses ? _self.totalCourses : totalCourses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CategoriesModel implements CategoriesModel {
  const _CategoriesModel({required this.id, required this.title, required this.icon, required this.totalCourses});
  factory _CategoriesModel.fromJson(Map<String, dynamic> json) => _$CategoriesModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String icon;
@override final  int totalCourses;

/// Create a copy of CategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesModelCopyWith<_CategoriesModel> get copyWith => __$CategoriesModelCopyWithImpl<_CategoriesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.totalCourses, totalCourses) || other.totalCourses == totalCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,icon,totalCourses);

@override
String toString() {
  return 'CategoriesModel(id: $id, title: $title, icon: $icon, totalCourses: $totalCourses)';
}


}

/// @nodoc
abstract mixin class _$CategoriesModelCopyWith<$Res> implements $CategoriesModelCopyWith<$Res> {
  factory _$CategoriesModelCopyWith(_CategoriesModel value, $Res Function(_CategoriesModel) _then) = __$CategoriesModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String icon, int totalCourses
});




}
/// @nodoc
class __$CategoriesModelCopyWithImpl<$Res>
    implements _$CategoriesModelCopyWith<$Res> {
  __$CategoriesModelCopyWithImpl(this._self, this._then);

  final _CategoriesModel _self;
  final $Res Function(_CategoriesModel) _then;

/// Create a copy of CategoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? icon = null,Object? totalCourses = null,}) {
  return _then(_CategoriesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,totalCourses: null == totalCourses ? _self.totalCourses : totalCourses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
