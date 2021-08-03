import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/repository/socios_repository.dart';
 
abstract class InicioEvent {}

class IsLoading extends InicioEvent {}

class IsLoaded extends InicioEvent {}

class CallInfoDiaria extends InicioEvent {}

class InicioBloc {
  SociosRepository sociosRepository = new SociosRepository();

  Sink<InicioEvent> get addEvent => _showInfoController.sink;
  final _showInfoController = StreamController<InicioEvent>();

  Sink<InicioEvent> get addEventLoading => _isLoadingController.sink;
  final _isLoadingController = StreamController<InicioEvent>();

  Stream<InfoVentaDiariaResponse> get infoDiaria => _infoDiariaSubject.stream;

  final _infoDiariaSubject = BehaviorSubject<InfoVentaDiariaResponse>();

  Stream<bool> get showLOading => _showLoadingSubject.stream;

  final _showLoadingSubject = BehaviorSubject<bool>();

  InfoVentaDiariaResponse? _infoVentaDiariaResponse;

  get getInfoVentaDiariaResponse => this._infoVentaDiariaResponse;
  set setInfoVentaDiariaResponse(value) =>
      this._infoVentaDiariaResponse = value;

  void dispose() {
    _showInfoController.close();
    _infoDiariaSubject.close();
    _showLoadingSubject.close();
    _isLoadingController.close();
  }

  InicioBloc() {
    _showInfoController.stream.listen(getInfoDiaria);
    _isLoadingController.stream.listen(setLoading);
    //_addEventController.stream.listen(setLoading);
  }

  void getInfoDiaria(event) async {
    if (event is CallInfoDiaria) {
      setLoading(IsLoading());
      var res1 = await sociosRepository.infoDiaria("DIAZPJOS");

      _infoDiariaSubject.add(res1!);
      setInfoVentaDiariaResponse = res1;
      setLoading(IsLoaded());
    }
  }

  void setLoading(event) async {
    if (event is IsLoading) {
      _showLoadingSubject.add(true);
    } else if (event is IsLoaded) {
      _showLoadingSubject.add(false);
    }
  }
}

class ProviderInicio extends InheritedWidget {
  //static late ProviderInicio _instancia;
  final inicioBloc = InicioBloc();
  factory ProviderInicio({Key? key, required Widget child}) {
    return new ProviderInicio._internal(key: key, child: child);
  }

  ProviderInicio._internal({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;



  static ProviderInicio of(context) =>
      context.dependOnInheritedWidgetOfExactType();
}
