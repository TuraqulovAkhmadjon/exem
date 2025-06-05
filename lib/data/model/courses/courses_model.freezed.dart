// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoursesModel {

 int get id; String get user; String get category; String get title; String get image; int get price; double get rating; String? get status;
/// Create a copy of CoursesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoursesModelCopyWith<CoursesModel> get copyWith => _$CoursesModelCopyWithImpl<CoursesModel>(this as CoursesModel, _$identity);

  /// Serializes this CoursesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,category,title,image,price,rating,status);

@override
String toString() {
  return 'CoursesModel(id: $id, user: $user, category: $category, title: $title, image: $image, price: $price, rating: $rating, status: $status)';
}


}

/// @nodoc
abstract mixin class $CoursesModelCopyWith<$Res>  {
  factory $CoursesModelCopyWith(CoursesModel value, $Res Function(CoursesModel) _then) = _$CoursesModelCopyWithImpl;
@useResult
$Res call({
 int id, String user, String category, String title, String image, int price, double rating, String? status
});




}
/// @nodoc
class _$CoursesModelCopyWithImpl<$Res>
    implements $CoursesModelCopyWith<$Res> {
  _$CoursesModelCopyWithImpl(this._self, this._then);

  final CoursesModel _self;
  final $Res Function(CoursesModel) _then;

/// Create a copy of CoursesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? category = null,Object? title = null,Object? image = null,Object? price = null,Object? rating = null,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CoursesModel implements CoursesModel {
  const _CoursesModel({required this.id, required this.user, required this.category, required this.title, required this.image, required this.price, required this.rating, this.status});
  factory _CoursesModel.fromJson(Map<String, dynamic> json) => _$CoursesModelFromJson(json);

@override final  int id;
@override final  String user;
@override final  String category;
@override final  String title;
@override final  String image;
@override final  int price;
@override final  double rating;
@override final  String? status;

/// Create a copy of CoursesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoursesModelCopyWith<_CoursesModel> get copyWith => __$CoursesModelCopyWithImpl<_CoursesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoursesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoursesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,category,title,image,price,rating,status);

@override
String toString() {
  return 'CoursesModel(id: $id, user: $user, category: $category, title: $title, image: $image, price: $price, rating: $rating, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CoursesModelCopyWith<$Res> implements $CoursesModelCopyWith<$Res> {
  factory _$CoursesModelCopyWith(_CoursesModel value, $Res Function(_CoursesModel) _then) = __$CoursesModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String user, String category, String title, String image, int price, double rating, String? status
});




}
/// @nodoc
class __$CoursesModelCopyWithImpl<$Res>
    implements _$CoursesModelCopyWith<$Res> {
  __$CoursesModelCopyWithImpl(this._self, this._then);

  final _CoursesModel _self;
  final $Res Function(_CoursesModel) _then;

/// Create a copy of CoursesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? category = null,Object? title = null,Object? image = null,Object? price = null,Object? rating = null,Object? status = freezed,}) {
  return _then(_CoursesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
