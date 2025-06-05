
import 'package:exem/data/model/categories/categories_model.dart';
import 'package:exem/data/model/interview/interview_model.dart';
import 'package:exem/data/model/social_media/social_media_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStatus { idle, loading, success, error }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required List<CategoriesModel> categories,
    required List<InterviewModel> interviews,
    required List<SocialMediaModel> socialMedias,
    required HomeStatus status,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      categories: [],
      status: HomeStatus.idle,
      interviews: [],
      socialMedias: [],
    );
  }
}
