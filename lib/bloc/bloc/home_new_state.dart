part of 'home_new_bloc.dart';

@freezed
class HomeNewState with _$HomeNewState {
  const factory HomeNewState.initial() = _Initial;
  const factory HomeNewState.showProgress() = _ShowProgress;
  const factory HomeNewState.data([InfoVentaDiariaResponse? infoVentaDiariaResponse]) = _Data;
    const factory HomeNewState.failure() = _Failure; 
    
}
