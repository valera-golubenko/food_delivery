// ignore_for_file: invalid_use_of_visible_for_testing_member

part of '../core.dart';

abstract class BaseBloc<Event extends BaseEventI, State extends BaseStateI>
    extends Bloc<Event, State> {
  BaseBloc(State initialState) : super(initialState);

  void handleError(BaseException message) {
    try {
      dynamic state = this.state;
      emit(state.copyWith(
        status: StateStatus.error,
        message: message.toString(),
      ) as State);
      emit(state.copyWith(
        status: StateStatus.loaded,
        message: '',
      ) as State);
    } catch (_) {}
  }

  Future<T?> safeAction<T>(
    AsyncValueGetter<T> callback,
  ) async {
    try {
      return await callback();
    } catch (exception) {
      if (exception is BaseException) {
        handleError(exception);
      } else {
        handleError(BaseException(message: '$exception'));
      }
      return null;
    }
  }
}
