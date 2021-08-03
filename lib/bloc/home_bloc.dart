import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:socios_app/utils/consts.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  SociosRepository? _sociosRepository;
 late StreamSubscription _homeSubscription;
  HomeBloc(SociosRepository sociosRepository) : super(HomeState.initial()) {
    _sociosRepository = sociosRepository;
     _homeSubscription = stream.listen((state) {
      state.maybeWhen(
          isLoading: () => _mapLoadToState,
          isLoaded: (user) => _mapFetchedToState,
          orElse: () => HomeState.isLoading());
    }); 
   // add(HomeEvent.fetched("DIAZPJOS"));
  }

 /*  @override
  Stream<Transition<HomeEvent, HomeState>> transformEvents(
    Stream<HomeEvent> events,
    TransitionFunction<HomeEvent, HomeState> transitionFn,
  ) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 500)),
      transitionFn,
    );
  } */

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.when(
       clean: _mapCleanToState,
      showProgress:_mapLoadToState,
      fetched:(user,_IsLoaded? state)=> _mapFetchedToState(user,state),
     
    );
  }

  Stream<HomeState> _mapLoadToState(user) async* {
    try {
       _homeSubscription.cancel();
       yield HomeState.isLoading();
        
      
      final infoVentaDiariaResponse = await _sociosRepository?.infoDiaria(user);
      yield HomeState.isLoaded(infoVentaDiariaResponse);
    //  _homeSubscription.pause();
       
    


     // add(HomeEvent.fetched(infoVentaDiariaResponse,_IsLoaded(infoVentaDiariaResponse)));

    } catch (_) {
      yield HomeState.failure();
    }
  }

Stream<HomeState> _mapFetchedToState(user,_IsLoaded? statusLoaded) async* {
    yield HomeState.isLoaded(statusLoaded?.infoVentaDiariaResponse);
  }

/*   Stream<HomeState> _mapShowProgressState(user) async* {
    try {
       
     // yield HomeState.isLoading();
     // state.
     // add(HomeEvent.fetched(user));
    } catch (_) {
      yield HomeState.failure();
    }
  }  */

  Stream<HomeState> _mapCleanToState() async* {
    try {
      yield HomeState.initial();
      // _homeSubscription.cancel();

    } catch (_) {
      yield HomeState.failure();
    }
  }

   
}
