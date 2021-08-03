import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';

part 'routes_event.dart';
part 'routes_state.dart';
part 'routes_bloc.freezed.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
   late SociosRepository _sociosRepository;
 
  RoutesBloc(this._sociosRepository) : super(_Initial());

  @override
  Stream<RoutesState> mapEventToState(
    RoutesEvent event,
  ) async* {
   yield* event.when(
     started: callInit, 
   loading: callShowProgress, 
   callListRoutes:(user,page,limit)=>  callListPedidos(user,page,limit));
  }

   Stream<RoutesState> callInit() async* {
    yield RoutesState.initial();
    //yield CustomerNewState.data([],false,"01",1);
  }

   Stream<RoutesState> callShowProgress() async* {
    yield RoutesState.showProgress();
  }


   Stream<RoutesState> callListPedidos(user, page,limit) async* {
    try {
      yield RoutesState.showProgress();
      final routesListResponse =
          await _sociosRepository.listRoutesByVendedor(user, page, limit) ;
      yield RoutesState.data(routesListResponse.routes);
    } catch (_) {
      yield RoutesState.failure();
    }
  }
}
