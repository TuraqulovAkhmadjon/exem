import 'package:exem/data/repository/categiries_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/interview_repository.dart';
import '../../../data/repository/social_media_repository.dart';
import 'home_state.dart';

part 'home_events.dart';

class HomeBloc extends Bloc<HomeEvents, HomeState> {
  final CategoriesRepository _catRepo;
  final InterviewRepository _interviewRepo;
  final SocialMediaRepository _socialMediaRepo;

  HomeBloc({
    required CategoriesRepository cateRepo,
    required InterviewRepository interviewRepo,
    required SocialMediaRepository socialMediaRepo,
  }) : _catRepo = cateRepo,
       _interviewRepo = interviewRepo,
       _socialMediaRepo = socialMediaRepo,
       super(HomeState.initial()) {
    on<HomeLoad>(_onLoad);
    add(HomeLoad());
  }

  Future<void> _onLoad(HomeLoad event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final categories = await _catRepo.getCategories(8, 1);
      final interviews = await _interviewRepo.getInterviews(2, 1);
      final socialMedia = await _socialMediaRepo.getSocialMedias();
      emit(
        state.copyWith(
          categories: categories,
          status: HomeStatus.success,
          interviews: interviews,
          socialMedias: socialMedia,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}
