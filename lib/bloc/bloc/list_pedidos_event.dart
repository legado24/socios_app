part of 'list_pedidos_bloc.dart';

@freezed
class ListPedidosEvent with _$ListPedidosEvent {
  const factory ListPedidosEvent.started() = _Started;
  const factory ListPedidosEvent.loading() = _Loading;
  const factory ListPedidosEvent.callListPedidos(user,fecha) = _CallListPedidos;
}