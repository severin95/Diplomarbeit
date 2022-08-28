part of 'signupform_bloc.dart';

@immutable
abstract class SignupformEvent {}

class RegisterWithEmailAndPasswortPressed extends SignupformEvent {
  final String? email;
  final String? password;
  RegisterWithEmailAndPasswortPressed(
      {required this.email, required this.password});
}

class SigninWithEmailAndPasswortPressed extends SignupformEvent {
  final String? email;
  final String? password;
  SigninWithEmailAndPasswortPressed(
      {required this.email, required this.password});
}
