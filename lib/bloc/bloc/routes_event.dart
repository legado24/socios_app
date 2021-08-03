part of 'routes_bloc.dart';

@freezed
class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.started() = _Started;
    const factory RoutesEvent.loading() = _Loading;
  const factory RoutesEvent.callListRoutes(user,page,limit) = _CallListRoutes;
}