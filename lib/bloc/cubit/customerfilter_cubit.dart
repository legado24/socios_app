import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/bloc/bloc/customer_new_bloc.dart';
import 'package:socios_app/models/response_model.dart';

part 'customerfilter_state.dart';
part 'customerfilter_cubit.freezed.dart';

class CustomerfilterCubit extends Cubit<CustomerfilterState> {
 final CustomerNewBloc bloc;
  CustomerfilterCubit(this.bloc) : super(CustomerfilterState.initial());


   void emitirFiltros(ClienteFilter? clienteFilter,user,filtro){
    
    emit(CustomerfilterState.filter(clienteFilter!));
    bloc.add(CustomerNewEvent.callListCustomerFilterSelected(user, clienteFilter.codigo, filtro,1));
  }
}