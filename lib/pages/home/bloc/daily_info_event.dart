part of 'daily_info_bloc.dart';

@freezed
class DailyInfoEvent with _$DailyInfoEvent {
   const factory DailyInfoEvent.loading() = _Loading;
  const factory  DailyInfoEvent.callInfoDiaria(user) = _CallInfoDiaria;
const factory    DailyInfoEvent.reInit() = _ReInit;
}