import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';

part 'customer_info_event.dart';
part 'customer_info_state.dart';
part 'customer_info_bloc.freezed.dart';

class CustomerInfoBloc extends Bloc<CustomerInfoEvent, CustomerInfoState> {
  late SociosRepository _sociosRepository;
  CustomerInfoBloc(this._sociosRepository) : super(_Initial());

  @override
  Stream<CustomerInfoState> mapEventToState(
    CustomerInfoEvent event,
  ) async* {
    yield * event.when(
      callInfoCustomer: callData,
      loading:callShowProgress ,
      reInit: callStateInicial
     );
  }


  Stream<CustomerInfoState> callStateInicial() async* {
      yield CustomerInfoState.initial() ;  
  }
  Stream<CustomerInfoState> callShowProgress() async* {
      yield CustomerInfoState.showProgress();  
  }


   Stream<CustomerInfoState> callData(user,codCliente) async* {
     try{
    yield CustomerInfoState.showProgress();
     var res1 = await _sociosRepository.getCustomerInfo(user, codCliente);
    yield CustomerInfoState.data(res1);
    
     } catch (_) {
      yield CustomerInfoState.failure();
    }
  }
}
