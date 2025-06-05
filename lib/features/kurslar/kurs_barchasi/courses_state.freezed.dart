// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoursesState {

 List<CoursesModel> get courses; CoursesStatus get status; int? get selectedCategoryId;
/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoursesStateCopyWith<CoursesState> get copyWith => _$CoursesStateCopyWithImpl<CoursesState>(this as CoursesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesState&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(courses),status,selectedCategoryId);

@override
String toString() {
  return 'CoursesState(courses: $courses, status: $status, selectedCategoryId: $selectedCategoryId)';
}


}

/// @nodoc
abstract mixin class $CoursesStateCopyWith<$Res>  {
  factory $CoursesStateCopyWith(CoursesState value, $Res Function(CoursesState) _then) = _$CoursesStateCopyWithImpl;
@useResult
$Res call({
 List<CoursesModel> courses, CoursesStatus status, int? selectedCategoryId
});




}
/// @nodoc
class _$CoursesStateCopyWithImpl<$Res>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._self, this._then);

  final CoursesState _self;
  final $Res Function(CoursesState) _then;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courses = null,Object? status = null,Object? selectedCategoryId = freezed,}) {
  return _then(_self.copyWith(
courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CoursesModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CoursesStatus,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc


class _CoursesState implements CoursesState {
  const _CoursesState({required final  List<CoursesModel> courses, required this.status, this.selectedCategoryId}): _courses = courses;
  

 final  List<CoursesModel> _courses;
@override List<CoursesModel> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

@override final  CoursesStatus status;
@override final  int? selectedCategoryId;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoursesStateCopyWith<_CoursesState> get copyWith => __$CoursesStateCopyWithImpl<_CoursesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoursesState&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses),status,selectedCategoryId);

@override
String toString() {
  return 'CoursesState(courses: $courses, status: $status, selectedCategoryId: $selectedCategoryId)';
}


}

/// @nodoc
abstract mixin class _$CoursesStateCopyWith<$Res> implements $CoursesStateCopyWith<$Res> {
  factory _$CoursesStateCopyWith(_CoursesState value, $Res Function(_CoursesState) _then) = __$CoursesStateCopyWithImpl;
@override @useResult
$Res call({
 List<CoursesModel> courses, CoursesStatus status, int? selectedCategoryId
});




}
/// @nodoc
class __$CoursesStateCopyWithImpl<$Res>
    implements _$CoursesStateCopyWith<$Res> {
  __$CoursesStateCopyWithImpl(this._self, this._then);

  final _CoursesState _self;
  final $Res Function(_CoursesState) _then;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courses = null,Object? status = null,Object? selectedCategoryId = freezed,}) {
  return _then(_CoursesState(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CoursesModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CoursesStatus,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
