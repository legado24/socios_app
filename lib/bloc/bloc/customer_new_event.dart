part of 'customer_new_bloc.dart';

@freezed
class CustomerNewEvent with _$CustomerNewEvent {
  const factory CustomerNewEvent.loading() = _Loading;
  // const factory CustomerNewEvent.callListCustomer(user,tipoFiltro,filtro,bool isInit,bool hasMax,[@Default(1) page]) = _CallInfoDiaria;
  const factory CustomerNewEvent.callListCustomer(user, tipoFiltro, filtro,
      [@Default(0) page]) = _CallListCustomer;
  const factory CustomerNewEvent.callListCustomerSearchKey(
          user, tipoFiltro, filtro, [@Default(0) page]) =
      _CallListCustomerSearchKey;
  const factory CustomerNewEvent.callListCustomerSearchButton(
          user, tipoFiltro, filtro, [@Default(0) page]) =
      _CallListCustomerSearchButton;
  const factory CustomerNewEvent.callListCustomerFilterSelected(
          user, tipoFiltro, filtro, [@Default(0) page]) =
      _CallListCustomerFilterSelected;

  const factory CustomerNewEvent.reInit() = _ReInit;
}
