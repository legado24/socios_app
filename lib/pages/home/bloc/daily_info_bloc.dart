import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';

part 'daily_info_event.dart';
part 'daily_info_state.dart';
part 'daily_info_bloc.freezed.dart';

class DailyInfoBloc extends Bloc<DailyInfoEvent, DailyInfoState> {
  late SociosRepository _sociosRepository;

  DailyInfoBloc(SociosRepository sociosRepository) : super(_Initial()) {
    _sociosRepository = sociosRepository;
  }
  @override
  Stream<DailyInfoState> mapEventToState(
    DailyInfoEvent event,
  ) async* {
    yield* event.when(
        callInfoDiaria: callData,
        loading: callShowProgress,
        reInit: callStateInicial);
  }

  Stream<DailyInfoState> callStateInicial() async* {
    yield DailyInfoState.initial();
  }

  Stream<DailyInfoState> callShowProgress() async* {
    yield DailyInfoState.showProgress();
  }

  Stream<DailyInfoState> callData(user) async* {
    try {
      yield DailyInfoState.showProgress();
      var res1 = await _sociosRepository.infoDiaria(user);
      yield DailyInfoState.data(res1);
    } catch (_) {
      yield DailyInfoState.failure();
    }
  }
}
