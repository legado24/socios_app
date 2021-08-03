part of 'pedidos_list_bloc.dart';

@freezed
class PedidosListEvent with _$PedidosListEvent {
  const factory PedidosListEvent.started() = _Started;
  const factory PedidosListEvent.loading() = _Loading;
  const factory PedidosListEvent.callListPedidos(user,fecha) = _CallListPedidos;
}