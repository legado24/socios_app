import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';
import 'package:socios_app/utils/consts.dart';
import 'package:socios_app/utils/debouncer.dart';

part 'customer_local_list_event.dart';
part 'customer_local_list_state.dart';
part 'customer_local_list_bloc.freezed.dart';

class CustomerLocalListBloc extends Bloc<CustomerLocalListEvent, CustomerLocalListState> {
 late SociosRepository _sociosRepository;
  //late CustomerKeyCubit _customerKeyCubit;
  final debouncer = Debouncer(
    duration: Duration(milliseconds: 800),
  );
  CustomerLocalListBloc(SociosRepository sociosRepository) : super(_Initial()) {
    _sociosRepository = sociosRepository;
   // _customerKeyCubit=customerKeyCubit;
  }

  @override
  Stream<CustomerLocalListState> mapEventToState(
    CustomerLocalListEvent event,
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


  Stream<CustomerLocalListState> callStateInicial() async* {
    yield CustomerLocalListState.initial();
    //yield CustomerLocalListState.data([],false,"01",1);
  }

  Stream<CustomerLocalListState> callDataSearchKey(
      user, tipoFiltro, filtro, page) async* {
    debouncer.value = '';
    debouncer.onValue = (value) async {
      add(CustomerLocalListEvent.loading());
      final localesResponse =
          await _sociosRepository.listClientes(user, tipoFiltro, filtro);
    //  print(localesResponse.getCustomerLocals);

      emit(CustomerLocalListState.data(
          localesResponse.getCustomerLocals,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? true
              : false,
          tipoFiltro,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? page
              : page + 1));
      
    };

    final timer = Timer.periodic(Duration(milliseconds: 500), (_) {
      debouncer.value = filtro;
    });

    Future.delayed(Duration(milliseconds: 501)).then((_) => timer.cancel());

  }

  Stream<CustomerLocalListState> callDataSearchButton(
      user, tipoFiltro, filtro, page) async* {
    yield CustomerLocalListState.initial();
    add(CustomerLocalListEvent.callListCustomer(user, tipoFiltro, filtro, page));
  }

  Stream<CustomerLocalListState> callDataFilterSelected(
      user, tipoFiltro, filtro, page) async* {
    yield CustomerLocalListState.initial();
    add(CustomerLocalListEvent.callListCustomer(user, tipoFiltro, filtro, page));
  }

  Stream<CustomerLocalListState> callShowProgress() async* {
    yield CustomerLocalListState.showProgress();
  }

  Stream<CustomerLocalListState> callData(user, tipoFiltro, filtro, page) async* {
    yield* state.maybeWhen(
        initial: () => fetchInicial(user, tipoFiltro, filtro, page),
        data: (locales, hasReachedMax, tipoFiltro, page) => //page == 1
            //? fetchInicial(user, tipoFiltro, filtro, page)
            //:
            fetchLoadedMore(user, tipoFiltro, filtro, page, locales,
                hasReachedMax: hasReachedMax),
        orElse: () => callStateInicial());
  }

  Stream<CustomerLocalListState> fetchInicial(user, tipoFiltro, filtro, page) async* {
    try {
      yield CustomerLocalListState.showProgress();
      final localesResponse =
          await _sociosRepository.listClientes(user, tipoFiltro, filtro);

      yield CustomerLocalListState.data(
          localesResponse.getCustomerLocals,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? true
              : false,
          tipoFiltro,
          localesResponse.getCustomerLocals.length < limitPagecustomerLocals
              ? page
              : page + 1);
    } catch (_) {
      yield CustomerLocalListState.failure();
    }
  }

  Stream<CustomerLocalListState> fetchLoadedMore(
      user, tipoFiltro, filtro, page, List<CustomerLocal> locales,
      {bool hasReachedMax = false}) async* {
    if (hasReachedMax) {
      yield CustomerLocalListState.data(locales, true, tipoFiltro);
      return;
    }
    final localesResponse = await _sociosRepository.listClientes(
        user, tipoFiltro, filtro, page + 1);
    yield localesResponse.getCustomerLocals.isEmpty
        ? CustomerLocalListState.data(locales, true, tipoFiltro)
        : CustomerLocalListState.data(locales + localesResponse.getCustomerLocals,
            false, tipoFiltro, page + 1);
  }
}
