
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/utils/consts.dart';

class Api {

Dio dio = Dio();
static String _baseURL = 'https://5a50d7152a9b.ngrok.io/preventaGps';
 static String _infoDiaria = '$_baseURL/getInfoDiariaVentas?';
 static String _clientesByDia = '$_baseURL/getClientesByDiaV3?';
 static String _pedidosByVendedor = '$_baseURL/getPedidosByVendedor?';
 static String _routesByVendedor = '$_baseURL/getRutasByUsuario?';
 static String _customerInfo = '$_baseURL/getCustomerInfo?';
  // static String clientesByDia = '$baseURL/getClientesByDiaV3?usuario=ANGELAD&tipoFiltro=01&page=1&limit=20&filtro=';
  String _USERNAME = "adrian";
  String _PASSWORD = "123456";
 
  Api() {
    dio.options.headers["Authorization"] =
        "Bearer " + base64Encode(utf8.encode('${_USERNAME}:${_PASSWORD}'));
       // dio.options.connectTimeout=10*1000;
       // dio.options.receiveTimeout=10*1000;
        
  }


 
 
  Future<InfoVentaDiariaResponse> getInfoVentas(user) async {
    var res = 
    await dio.get(_infoDiaria+'usuario=$user').catchError((e) {
      throw (e);
    });
     if (res.statusCode == 200) {
      
      var responseBody = res.data;
      
      return InfoVentaDiariaResponse.fromJson(responseBody);
     
    } else {
      throw ('Error ${res.statusCode}');
    }
    
  }


  Future<CustomerLocalListResponse>  getClientes(user,tipoFiltro,filtro,[int page=1]) async {
     var res = await dio.get(_clientesByDia+'usuario=$user&tipoFiltro=$tipoFiltro&page=$page&limit=$limitPagecustomerLocals&filtro=$filtro').catchError((e) {
      throw (e);
    });
    
    if (res.statusCode == 200) {
 
    var responseBody = res.data;
    
      return CustomerLocalListResponse.fromJson(responseBody);
     
    } else {
      throw ('Error ${res.statusCode}');
    }
    
  }



   Future<PedidoListResponse>  getPedidosByVendedor(user,fecha) async {
     var res = await dio.get(_pedidosByVendedor+'usuario=$user&fecha=$fecha').catchError((e) {
      throw (e);
    });
    
    if (res.statusCode == 200) {
 
    var responseBody = res.data;
      
      return PedidoListResponse.fromJson(responseBody);
     
    } else {
      throw ('Error ${res.statusCode}');
    }
    
  }

  Future<RouteListResponse>  getRoutesByVendedor(user,page,limit) async {
     var res = await dio.get(_routesByVendedor+'usuario=$user&page=$page&limit=$limit').catchError((e) {
      throw (e);
    });
    
    if (res.statusCode == 200) {
 
    var responseBody = res.data;
     
      return RouteListResponse.fromJson(responseBody);
     
    } else {
      throw ('Error ${res.statusCode}');
    }
    
  }
   Future<CustomerInfoResponse>  getCustomerInfo(user,codCliente) async {
     var res = await dio.get(_customerInfo+'usuario=$user&codCliente=$codCliente').catchError((e) {
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