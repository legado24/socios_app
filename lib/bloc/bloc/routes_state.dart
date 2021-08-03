part of 'routes_bloc.dart';

@freezed
class RoutesState with _$RoutesState {
  const factory RoutesState.initial() = _Initial;
   const factory RoutesState.showProgress() = _ShowProgress;
  const factory RoutesState.data(
      List<Route> routes) = _Data;
  const factory RoutesState.failure() = _Failure;
}
