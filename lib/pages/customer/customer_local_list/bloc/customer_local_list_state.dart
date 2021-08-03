part of 'customer_local_list_bloc.dart';

@freezed
class CustomerLocalListState with _$CustomerLocalListState {
  const factory CustomerLocalListState.initial() = _Initial;
  const factory CustomerLocalListState.showProgress() = _ShowProgress;
  const factory CustomerLocalListState.data(
      List<CustomerLocal> locales, bool hasReachedMax, String tipoFiltro,
      [@Default(0) page]) = _Data;
  const factory CustomerLocalListState.failure() = _Failure;

}
