
import 'package:exem/features/auht/maneger/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/repository/auth_repository.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvents, LoginState> {
  final AuthRepository _repo;

  LoginBloc({required AuthRepository repo})
      : _repo = repo,
        super(LoginState.initial()) {
    on<LoginRequest>(_onLoginRequest);
  }

  Future<void> _onLoginRequest(
      LoginRequest event,
      Emitter<LoginState> emit,
      ) async {
    emit(state.copyWith(status: LoginStatus.idle));
    try {
      await _repo.login(event.email, event.password);
      emit(state.copyWith(status: LoginStatus.success));
    } catch (e) {
      emit(
        state.copyWith(errorMessage: e.toString(), status: LoginStatus.error),
      );
    }
  }
}
