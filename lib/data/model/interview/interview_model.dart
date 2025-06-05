import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_model.freezed.dart';

part 'interview_model.g.dart';

@freezed
abstract class InterviewModel with _$InterviewModel {
  const factory InterviewModel({
    required int id,
    required String user,
    required String title,
    required String image,
    required int duration,
  }) = _InterviewModel;

  factory InterviewModel.fromJson(Map<String, dynamic> json) =>
      _$InterviewModelFromJson(json);
}
