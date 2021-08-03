part of 'customer_info_bloc.dart';

@freezed
class CustomerInfoEvent with _$CustomerInfoEvent {
const factory CustomerInfoEvent.loading() = _Loading;
  const factory CustomerInfoEvent.callInfoCustomer(user,codCliente) = _CallInfoDiaria;
const factory CustomerInfoEvent.reInit() = _ReInit;
}