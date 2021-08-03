import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';

part 'list_pedidos_event.dart';
part 'list_pedidos_state.dart';
part 'list_pedidos_bloc.freezed.dart';

class ListPedidosBloc extends Bloc<ListPedidosEvent, ListPedidosState> {
  late SociosRepository _sociosRepository;
  ListPedidosBloc(this._sociosRepository) : super(_Initial());

  @override
  Stream<ListPedidosState> mapEventToState(
    ListPedidosEvent event,
  ) async* {
   yield* event.when(
     started: callInit, 
   loading: callShowProgress, 
   callListPedidos:  callListPedidos);
  }

   Stream<ListPedidosState> callInit() async* {
    yield ListPedidosState.initial();
    //yield CustomerNewState.data([],false,"01",1);
  }

   Stream<ListPedidosState> callShowProgress() async* {
    yield ListPedidosState.showProgress();
  }


   Stream<ListPedidosState> callListPedidos(user, fecha) async* {
    try {
      yield ListPedidosState.showProgress();
      final pedidosListResponse =
          await _sociosRepository.listPedidosByVendedor(user, fecha) ;
      yield ListPedidosState.data(pedidosListResponse.getPedidos);
    } catch (_) {
      yield ListPedidosState.failure();
    }
  }
}
