import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';

part 'pedidos_list_event.dart';
part 'pedidos_list_state.dart';
part 'pedidos_list_bloc.freezed.dart';

class PedidosListBloc extends Bloc<PedidosListEvent, PedidosListState> {
 late SociosRepository _sociosRepository;
  PedidosListBloc(this._sociosRepository) : super(_Initial());

  @override
  Stream<PedidosListState> mapEventToState(
    PedidosListEvent event,
  ) async* {
   yield* event.when(
     started: callInit, 
   loading: callShowProgress, 
   callListPedidos:  callListPedidos);
  }

   Stream<PedidosListState> callInit() async* {
    yield PedidosListState.initial();
    //yield CustomerNewState.data([],false,"01",1);
  }

   Stream<PedidosListState> callShowProgress() async* {
    yield PedidosListState.showProgress();
  }


   Stream<PedidosListState> callListPedidos(Map<String, String> parametros) async* {
    try {
      yield PedidosListState.showProgress();
      final pedidosListResponse =
          await _sociosRepository.listPedidosByVendedor(parametros) ;
      yield PedidosListState.data(pedidosListResponse.getPedidos);
    } catch (_) {
      yield PedidosListState.failure();
    }
  }
}
