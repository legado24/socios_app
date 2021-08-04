import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/utils/consts.dart';
 
class Api {
    int count=0;
  static BaseOptions options = new BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 000,
  );
  Dio dio = Dio(options);

  static String _baseURL = 'https://5a50d7152a9b.ngrok.io/preventaGps';
  static String _infoDiaria = '$_baseURL/getInfoDiariaVentas?';
  static String _clientesByDia = '$_baseURL/getClientesByDiaV3?';
  static String _pedidosByVendedor = '$_baseURL/getPedidosByVendedor?';
  static String _routesByVendedor = '$_baseURL/getRutasByUsuario?';
  static String _customerInfo = '$_baseURL/getCustomerInfo?';
  // static String clientesByDia = '$baseURL/getClientesByDiaV3?usuario=ANGELAD&tipoFiltro=01&page=1&limit=20&filtro=';
  String _USERNAME = "adrian";
  String _PASSWORD = "123456";
  var token = CancelToken(); 
  
  Api() {
    
    dio.options.headers["Authorization"] =
        "Bearer " + base64Encode(utf8.encode('${_USERNAME}:${_PASSWORD}'));

    /* dio.options.connectTimeout=50;
      dio.options.receiveTimeout=50;
      dio.options.sendTimeout=50; */
    //  dio.interceptors.clear();

    /*   dio.interceptors .add(InterceptorsWrapper(onRequest:(RequestOptions options,RequestInterceptorHandler handler ){
      options.headers["Authorization"] = "Bearer " + base64Encode(utf8.encode('${_USERNAME}:${_PASSWORD}'));
      options.sendTimeout=60;
      options.receiveTimeout=60;
      options.sendTimeout=60;
    })); */
  }

  Future<InfoVentaDiariaResponse> getInfoVentas(user) async {
    /*  Timer(Duration(milliseconds: 10000), () {
    token.cancel('cancelled');
  }); */
 
  //token.cancel('cancelled');
     
    final Map<String, String> parametros = {"usuario": user};
    var res = await dio
         .get(_infoDiaria,queryParameters: parametros,cancelToken: token)
       // .get(_infoDiaria, queryParameters: parametros)
       
        .catchError((e) {
        
      if (CancelToken.isCancel(e)) {
        print('$_infoDiaria: $e');
      }
      throw (e);
    });
      count=count+1;
          print(count);
    if (res.statusCode == 200) {
      var responseBody = res.data;

      return InfoVentaDiariaResponse.fromJson(responseBody);
    } else {
      throw ('Error ${res.statusCode}');
    }
  }

  Future<CustomerLocalListResponse> getClientes(user, tipoFiltro, filtro,
      [int page = 1]) async {
    var res = await dio
        .get(_clientesByDia +
            'usuario=$user&tipoFiltro=$tipoFiltro&page=$page&limit=$limitPagecustomerLocals&filtro=$filtro')
        .catchError((e) {
      throw (e);
    });

    if (res.statusCode == 200) {
      var responseBody = res.data;

      return CustomerLocalListResponse.fromJson(responseBody);
    } else {
      throw ('Error ${res.statusCode}');
    }
  }

  Future<PedidoListResponse> getPedidosByVendedor(Map<String, String> parametros) async {
     final Map<String, String> parame = {"usuario": "DIAZPJOS","fecha":"03-08-2021"};
    
    print(parame);
    print(parametros);
    var res = await dio
        .get(_pedidosByVendedor ,queryParameters: parametros)
        .catchError((e) {
      throw (e);
    });

    if (res.statusCode == 200) {
      var responseBody = res.data;

      return PedidoListResponse.fromJson(responseBody);
    } else {
      throw ('Error ${res.statusCode}');
    }
  }

  Future<RouteListResponse> getRoutesByVendedor(user, page, limit) async {
    var res = await dio
        .get(_routesByVendedor + 'usuario=$user&page=$page&limit=$limit')
        .catchError((e) {
      throw (e);
    });

    if (res.statusCode == 200) {
      var responseBody = res.data;

      return RouteListResponse.fromJson(responseBody);
    } else {
      throw ('Error ${res.statusCode}');
    }
  }

  Future<CustomerInfoResponse> getCustomerInfo(user, codCliente) async {
    var res = await dio
        .get(_customerInfo + 'usuario=$user&codCliente=$codCliente')
        .catchError((e) {
      throw (e);
    });

    if (res.statusCode == 200) {
      var responseBody = res.data;

      return CustomerInfoResponse.fromJson(responseBody);
    } else {
      throw ('Error ${res.statusCode}');
    }
  }
}
