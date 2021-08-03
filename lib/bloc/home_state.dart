part of 'home_bloc.dart';
//enum InfoStatus { initial, success, failure }
@freezed
 class HomeState with _$HomeState {
  //const HomeState._(); // Added constructor
  /* const factory HomeState( {int? hasData}) = _HomeState;
 
  factory HomeState.initial()=>HomeState(hasData: 0); */
  const factory HomeState.initial() = _Initial;
  const factory HomeState.isLoading() = _IsLoading;
  const factory HomeState.isLoaded(InfoVentaDiariaResponse? infoVentaDiariaResponse) = _IsLoaded;
  //const factory HomeState.isClean()=_IsClean;
  const factory HomeState.failure() = _Failure;  
}
