part of 'customer_new_bloc.dart';

@freezed
class CustomerNewState with _$CustomerNewState {
  const factory CustomerNewState.initial() = _Initial;
  const factory CustomerNewState.showProgress() = _ShowProgress;
  const factory CustomerNewState.data(
      List<CustomerLocal> locales, bool hasReachedMax, String tipoFiltro,
      [@Default(0) page]) = _Data;
  const factory CustomerNewState.failure() = _Failure;
}
