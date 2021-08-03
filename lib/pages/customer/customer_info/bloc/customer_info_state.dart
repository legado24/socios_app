part of 'customer_info_bloc.dart';

@freezed
class CustomerInfoState with _$CustomerInfoState {
  const factory CustomerInfoState.initial() = _Initial;
  const factory CustomerInfoState.showProgress() = _ShowProgress;
  const factory CustomerInfoState.data(CustomerInfoResponse? customerInfoResponse) = _Data;
   const factory CustomerInfoState.failure() = _Failure; 
}
