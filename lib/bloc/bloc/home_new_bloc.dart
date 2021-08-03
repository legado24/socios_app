import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socios_app/bloc/home_bloc.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:socios_app/utils/consts.dart';

part 'home_new_event.dart';
part 'home_new_state.dart';
part 'home_new_bloc.freezed.dart';

class HomeNewBloc extends Bloc<HomeNewEvent, HomeNewState> {

 late SociosRepository _sociosRepository;

  HomeNewBloc(SociosRepository sociosRepository) : super(_Initial()){
    _sociosRepository=sociosRepository;
  }
  @override
  Stream<HomeNewState> mapEventToState(
    HomeNewEvent event,
  ) async* {
   yield * event.when(
      callInfoDiaria: callData,
      loading:callShowProgress ,
      reInit: callStateInicial
     );
  }


  /*   @override
  Stream<Transition<HomeNewEvent, HomeNewState>> transformEvents(
    Stream<HomeNewEvent> events,
    TransitionFunction<HomeNewEvent, HomeNewState> transitionFn,
  ) {
    
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: -500)),
      transitionFn,
    );
  }  */

   Stream<HomeNewState> callStateInicial() async* {
      yield HomeNewState.initial()

        
      ;  
  }
  Stream<HomeNewState> callShowProgress() async* {
      yield HomeNewState.showProgress();  
  }


   Stream<HomeNewState> callData(user) async* {
     try{
    yield HomeNewState.showProgress();
     var res1 = await _sociosRepository.infoDiaria(user);
    yield HomeNewState.data(res1);
    
     } catch (_) {
      yield HomeNewState.failure();
    }
  }

  
 
}
