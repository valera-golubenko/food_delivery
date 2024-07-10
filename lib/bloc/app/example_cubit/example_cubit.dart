import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../base/core/core.dart';



part 'example_state.dart';
part 'example_cubit.freezed.dart';

@injectable
class ExampleCubit extends BaseCubit<ExampleState> {
  ExampleCubit() : super(const ExampleState());

  Future<void> init() async {
    emit(state.copyWith(status: StateStatus.loaded));
  }
}
