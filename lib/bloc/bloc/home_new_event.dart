part of 'home_new_bloc.dart';

@freezed
class HomeNewEvent with _$HomeNewEvent {
  const factory HomeNewEvent.loading() = _Loading;
  const factory HomeNewEvent.callInfoDiaria(user) = _CallInfoDiaria;
const factory HomeNewEvent.reInit() = _ReInit;
}