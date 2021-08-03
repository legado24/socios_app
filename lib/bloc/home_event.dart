part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.showProgress(user) = _ShowProgress;
  const factory HomeEvent.fetched(user,_IsLoaded? state
  ) = _Fetched;
  const factory HomeEvent.clean()=_Clean;
}