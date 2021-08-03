part of 'customerfilter_cubit.dart';

@freezed
abstract class CustomerfilterState with _$CustomerfilterState {
  const factory CustomerfilterState.initial() = _Initial;
  const factory CustomerfilterState.filter(ClienteFilter clienteFilter) = _Filter;

}
