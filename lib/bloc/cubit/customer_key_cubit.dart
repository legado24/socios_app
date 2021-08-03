import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_key_state.dart';
part 'customer_key_cubit.freezed.dart';

class CustomerKeyCubit extends Cubit<CustomerKeyState> {
  CustomerKeyCubit() : super(CustomerKeyState.initial());

  void emitirKeys(String key) {
    emit(CustomerKeyState.emiteKeys(key));
  }
}
