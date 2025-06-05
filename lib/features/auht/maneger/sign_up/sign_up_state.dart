import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

enum SignUpStatus { idle, loading, success, error }

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required SignUpStatus status,
    String? errorMessage,
  }) = _SignUpState;

  factory SignUpState.initial() => const SignUpState(
    firstName: '',
    lastName: '',
    email: '',
    phoneNumber: '',
    password: '',
    status: SignUpStatus.idle,
  );
}
