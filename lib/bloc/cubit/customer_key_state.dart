part of 'customer_key_cubit.dart';

@freezed
abstract class CustomerKeyState with _$CustomerKeyState {
  const factory CustomerKeyState.initial() = _Initial;
  const factory CustomerKeyState.emiteKeys(String key) = _EmiteKeys;
}
