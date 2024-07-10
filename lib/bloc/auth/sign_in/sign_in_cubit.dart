import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../base/core/core.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

@injectable
class SignInCubit extends BaseCubit<SignInState> {
  SignInCubit() : super(const SignInState());

  Future<void> init() async {
    emit(state.copyWith(status: StateStatus.loaded));
  }

  set setEmail(String value) {
    emit(state.copyWith(
      email: value,
      activeSignUpValidation: false,
    ));
  }

  set setPassword(String value) {
    emit(state.copyWith(
      password: value,
      activeSignUpValidation: false,
    ));
  }

  set activeSignInValidation(bool value) {
    emit(state.copyWith(activeSignUpValidation: value));
  }

  Future<void> onLogin(AsyncCallback callback) async {
    // final body = LoginUserRequestModel(
    //   email: state.email,
    //   password: state.password,
    // );

    emit(state.copyWith(status: StateStatus.refresh));

    // final result = await safeAction(() => _authService.login(body));
    // emit(state.copyWith(status: StateStatus.loaded));
    // if (result == null) return;
    // emit(state.copyWith(status: StateStatus.refresh));

    emit(state.copyWith(status: StateStatus.loaded));

    await callback.call();
  }
}
