import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/repository/auth_repository.dart';
import '../sign_up_state.dart';

part 'sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository _repo;

  SignUpBloc({required AuthRepository repo})
      : _repo = repo,
        super(SignUpState.initial()) {
    on<SignUpRequested>(_onSignUpRequested);
  }

  Future<void> _onSignUpRequested(
      SignUpRequested event,
      Emitter<SignUpState> emit,
      ) async {
    emit(state.copyWith(status: SignUpStatus.loading));

    try {
      final success = await _repo.signUp(
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        phoneNumber: event.phoneNumber,
        password: event.password,
      );

      if (success) {
        emit(state.copyWith(status: SignUpStatus.success));
      } else {
        emit(state.copyWith(
          status: SignUpStatus.error,
          errorMessage: "Sign up failed, please try again.",
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: SignUpStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

}
