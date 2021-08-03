part of 'customer_local_list_bloc.dart';

@freezed
class CustomerLocalListEvent with _$CustomerLocalListEvent {
   const factory CustomerLocalListEvent.loading() = _Loading;
  const factory CustomerLocalListEvent.callListCustomer(
      user, tipoFiltro, filtro,
      [@Default(0) page]) = _CallListCustomer;
  const factory CustomerLocalListEvent.callListCustomerSearchKey(
          user, tipoFiltro, filtro, [@Default(0) page]) =
      _CallListCustomerSearchKey;
  const factory CustomerLocalListEvent.callListCustomerSearchButton(
          user, tipoFiltro, filtro, [@Default(0) page]) =
      _CallListCustomerSearchButton;
  const factory CustomerLocalListEvent.callListCustomerFilterSelected(
          user, tipoFiltro, filtro, [@Default(0) page]) =
      _CallListCustomerFilterSelected;

  const factory CustomerLocalListEvent.reInit() = _ReInit;
}