part of 'signupform_bloc.dart';

/*@immutable
class SignupformState {
  final bool isSubmitting;
  final bool showValidateMessages;
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccesOption;

  SignupformState(
      {required this.isSubmitting, required this.showValidateMessages, required this.authFailureOrSuccesOption});
}*/
@immutable
class SignupformState {
  final bool isSubmitting;
  final bool showValidationMessages;
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  SignupformState(
      {required this.isSubmitting,
      required this.showValidationMessages,
      required this.authFailureOrSuccessOption});

  SignupformState copyWith({
    bool? isSubmitting,
    bool? showValidationMessages,
    Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption,
  }) {
    return SignupformState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      authFailureOrSuccessOption:
          authFailureOrSuccessOption ?? this.authFailureOrSuccessOption,
      showValidationMessages:
          showValidationMessages ?? this.showValidationMessages,
    );
  }
}
