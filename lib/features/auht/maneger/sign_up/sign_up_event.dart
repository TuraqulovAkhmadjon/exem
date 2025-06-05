part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}
class SignUpRequested extends SignUpEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String password;

  SignUpRequested({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });
}
