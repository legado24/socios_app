import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/customer/customer_local_list/bloc/customer_local_list_bloc.dart';

part 'customerfilter_state.dart';
part 'customerfilter_cubit.freezed.dart';

class CustomerfilterCubit extends Cubit<CustomerfilterState> {
 final CustomerLocalListBloc bloc;
  CustomerfilterCubit(this.bloc) : super(CustomerfilterState.initial());


   void emitirFiltros(ClienteFilter? clienteFilter,user,filtro){
    
    emit(CustomerfilterState.filter(clienteFilter!));
    bloc.add(CustomerLocalListEvent.callListCustomerFilterSelected(user, clienteFilter.codigo, filtro,1));
  }
}