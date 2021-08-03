part of 'daily_info_bloc.dart';

@freezed
class DailyInfoState with _$DailyInfoState {
  const factory DailyInfoState.initial() = _Initial;
  const factory DailyInfoState.showProgress() = _ShowProgress;
  const factory DailyInfoState.data(InfoVentaDiariaResponse? infoVentaDiariaResponse) = _Data;
  const factory DailyInfoState.failure() = _Failure;
}
