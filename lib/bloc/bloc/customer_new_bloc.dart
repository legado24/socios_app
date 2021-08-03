import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/bloc/cubit/customer_key_cubit.dart';

import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:socios_app/utils/consts.dart';
import 'package:socios_app/utils/debouncer.dart';

part 'customer_new_event.dart';
part 'customer_new_state.dart';
part 'customer_new_bloc.freezed.dart';

class CustomerNewBloc extends Bloc<CustomerNewEvent, CustomerNewState> {
  late SociosRepository _sociosRepository;
  //late CustomerKeyCubit _customerKeyCubit;
  final debouncer = Debouncer(
    duration: Duration(milliseconds: 800),
  );
  CustomerNewBloc(SociosRepository sociosRepository) : super(_Initial()) {
    _sociosRepository = sociosRepository;
   // _customerKeyCubit=customerKeyCubit;
  }

  @override
  Stream<CustomerNewState> mapEventToState(
    CustomerNewEvent event,
  ) async* {
    yield* event.when(
        callListCustomer: (user, tipoFiltro, filtro, page) =>
            callData(user, tipoFiltro, filtro, page),
        callListCustomerSearchKey: (user, tipoFiltro, filtro, page) =>
            callDataSearchKey(user, tipoFiltro, filtro, page),
        callListCustomerSearchButton: (user, tipoFiltro, filtro, page) =>
            callDataSearchButton(user, tipoFiltro, filtro, page),
        callListCustomerFilterSelected: (user, tipoFiltro, filtro, page) =>
            callDataFilterSelected(user, tipoFiltro, filtro, page),
        loading: callShowProgress,
        reInit: callStateInicial);
  }

/* @override
  Stream<Transition< CustomerNewEvent, CustomerNewState >> transformEvents(
      Stream< CustomerNewEvent > events, transitionFn) {
    return events
        .debounceTime(const Duration(milliseconds: 300))
        .switchMap((transitionFn));
  } */
  /*    @override
  Stream<Transition<CustomerNewEvent, CustomerNewState>> transformEvents(
    Stream<CustomerNewEvent> events,
    TransitionFunction<CustomerNewEvent, CustomerNewState> transitionFn,
  ) {
    
     events.map((event) => print("evento en debounce ${event}"));
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds:100 )),
      transitionFn,
    );
  }  
   */
  Stream<CustomerNewState> callStateInicial() async* {
    yield CustomerNewState.initial();
    //yield CustomerNewState.data([],false,"01",1);
  }

  Stream<CustomerNewState> callDataSearchKey(
      user, tipoFiltro, filtro, page) async* {
    debouncer.value = '';
    debouncer.onValue = (value) async {
      add($CustomerNewEvent.loading());
      final localesResponse =
          await _sociosRepository.listClientes(user, tipoFiltro, filtro);
    //  print(localesResponse.getCustomerLocals);

      emit(CustomerNewState.data(
          localesResponse.getCustomerLocals,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? true
              : false,
          tipoFiltro,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? page
              : page + 1));
      //yield
      //add($CustomerNewEvent.reInit());
      //add(CustomerNewEvent.callListCustomerSearchKey(user, tipoFiltro, value,page));
      // CustomerNewEvent.callListCustomer(usuario,tipoFiltro,hasDebounce, value);
    };

    final timer = Timer.periodic(Duration(milliseconds: 500), (_) {
      debouncer.value = filtro;
    });

    Future.delayed(Duration(milliseconds: 501)).then((_) => timer.cancel());

    /* 
    yield CustomerNewState.initial();
     add(CustomerNewEvent.callListCustomer(user, tipoFiltro, filtro,page)); */
  }

  Stream<CustomerNewState> callDataSearchButton(
      user, tipoFiltro, filtro, page) async* {
    yield CustomerNewState.initial();
    add(CustomerNewEvent.callListCustomer(user, tipoFiltro, filtro, page));
  }

  Stream<CustomerNewState> callDataFilterSelected(
      user, tipoFiltro, filtro, page) async* {
    yield CustomerNewState.initial();
    add(CustomerNewEvent.callListCustomer(user, tipoFiltro, filtro, page));
  }

  Stream<CustomerNewState> callShowProgress() async* {
    yield CustomerNewState.showProgress();
  }

  Stream<CustomerNewState> callData(user, tipoFiltro, filtro, page) async* {
    yield* state.maybeWhen(
        initial: () => fetchInicial(user, tipoFiltro, filtro, page),
        data: (locales, hasReachedMax, tipoFiltro, page) => //page == 1
            //? fetchInicial(user, tipoFiltro, filtro, page)
            //:
            fetchLoadedMore(user, tipoFiltro, filtro, page, locales,
                hasReachedMax: hasReachedMax),
        orElse: () => callStateInicial());
  }

  Stream<CustomerNewState> fetchInicial(user, tipoFiltro, filtro, page) async* {
    try {
      yield CustomerNewState.showProgress();
      final localesResponse =
          await _sociosRepository.listClientes(user, tipoFiltro, filtro);

      yield CustomerNewState.data(
          localesResponse.getCustomerLocals,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? true
              : false,
          tipoFiltro,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? page
              : page + 1);
    } catch (_) {
      yield CustomerNewState.failure();
    }
  }

  Stream<CustomerNewState> fetchLoadedMore(
      user, tipoFiltro, filtro, page, List<CustomerLocal> locales,
      {bool hasReachedMax = false}) async* {
    if (hasReachedMax) {
      yield CustomerNewState.data(locales, true, tipoFiltro);
      return;
    }
    final localesResponse = await _sociosRepository.listClientes(
        user, tipoFiltro, filtro, page + 1);
    yield localesResponse.getCustomerLocals.isEmpty
        ? CustomerNewState.data(locales, true, tipoFiltro)
        : CustomerNewState.data(locales + localesResponse.getCustomerLocals,
            false, tipoFiltro, page + 1);
  }
}
