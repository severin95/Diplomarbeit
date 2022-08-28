import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:login_bildschirm/core/Failures/auth_failures.dart';
import 'package:login_bildschirm/domain/repositries/auth_repository.dart';
import 'package:meta/meta.dart';

part 'signupform_event.dart';
part 'signupform_state.dart';
/*
class SignupformBloc extends Bloc<SignupformEvent, SignupformState> {
  final AuthRepository authRepository;
  SignupformBloc({required this.authRepository})
      : super(
            SignupformState(isSubmitting: false, showValidateMessages: false)) {
    on<RegisterWithEmailAndPasswortPressed>((event, emit) async{
      if (event.email == null || event.password == null) {
        emit(SignupformState(isSubmitting: false, showValidateMessages: true));
      } else {
        emit(SignupformState(isSubmitting: true, showValidateMessages: false));
       final failureOrSucces = await authRepository.RegisterWithEmailAndPasswort(
            email: event.email!, password: event.password!);

        // emit (SignupformState(isSubmitting: false, showValidateMessages: true));
      }
    });

    on<SigninWithEmailAndPasswortPressed>((event, emit) {
      if (event.email == null || event.password == null) {
        emit(SignupformState(isSubmitting: false, showValidateMessages: true));
      } else {
        emit(SignupformState(isSubmitting: true, showValidateMessages: false));
        // toDo trigger authentication

        // emit (SignupformState(isSubmitting: false, showValidateMessages: true));
      }
    });
  }
}
*/

class SignupformBloc extends Bloc<SignupformEvent, SignupformState> {
  final AuthRepository authRepository;
  SignupformBloc({required this.authRepository})
      : super(SignupformState(
            isSubmitting: false,
            showValidationMessages: false,
            authFailureOrSuccessOption: none())) {
    on<RegisterWithEmailAndPasswortPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(isSubmitting: false, showValidationMessages: true));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
        final failureOrSuccess =
            await authRepository.RegisterWithEmailAndPasswort(
                email: event.email!, password: event.password!);

        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)));
      }
    });

    on<SigninWithEmailAndPasswortPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(isSubmitting: false, showValidationMessages: true));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
        final failureOrSuccess =
            await authRepository.SigninWithEmailAndPasswort(
                email: event.email!, password: event.password!);

        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)));
      }
    });
  }
}
