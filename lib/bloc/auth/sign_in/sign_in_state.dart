part of 'sign_in_cubit.dart';

@freezed
class SignInState extends BaseStateI with _$SignInState {
  const SignInState._();

  const factory SignInState({
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String message,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool activeSignUpValidation,
  }) = _SignInState;

  // bool get activeSignInButton {
  //   if (!activeSignUpValidation) return filledFields;

  //   return validAllSignInPoints;
  // }

  bool get filledFields {
    return [
      email.isNotEmpty,
      password.isNotEmpty,
    ].every((element) => element);
  }

  // bool get validAllSignInPoints {
  //   return [
  //     _passwordValidation,
  //     _emailValidation == null,
  //   ].every((element) => element);
  // }

  bool get _passwordValidation {
    return password.length >= 6;
  }

  // String? get _emailValidation {
  //   return EmailValidator.validator(email);
  // }

  // String? warningEmail(AppLocalizations strings) {
  //   if (!activeSignUpValidation) return null;

  //   return _emailValidation;
  // }

  // String? warningPassword(AppLocalizations strings) {
  //   if (!activeSignUpValidation) return null;

  //   if (_passwordValidation) return null;

  //   return strings.incorrectPasswordEntered;
  // }
}
