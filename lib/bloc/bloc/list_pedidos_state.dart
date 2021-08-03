part of 'list_pedidos_bloc.dart';

@freezed
class ListPedidosState with _$ListPedidosState {
  const factory ListPedidosState.initial() = _Initial;
  const factory ListPedidosState.showProgress() = _ShowProgress;
  const factory ListPedidosState.data(
      List<Pedido> pedidos) = _Data;
  const factory ListPedidosState.failure() = _Failure;
}
