part of 'pedidos_list_bloc.dart';

@freezed
class PedidosListState with _$PedidosListState {
  const factory PedidosListState.initial() = _Initial;
  const factory PedidosListState.showProgress() = _ShowProgress;
  const factory PedidosListState.data(List<Pedido> pedidos) = _Data;
  const factory PedidosListState.failure() = _Failure;
}
