 
import 'dart:async';

import 'package:socios_app/models/response_model.dart';
 import 'package:socios_app/services/api_socios.dart';

class SociosRepository {
  Api api = new Api();
  static SociosRepository _instance = SociosRepository._internal();
  SociosRepository._internal();

  factory SociosRepository() {
    return _instance;
  }

  Future<InfoVentaDiariaResponse>? infoDiaria(user) async {
    var infoVentaDiariaResponse = await api.getInfoVentas(user);
    
     return infoVentaDiariaResponse;
  }


    Future<CustomerLocalListResponse>  listClientes(user,tipoFiltro,filtro,[int page = 1]) async {
    var response = await api.getClientes(user,tipoFiltro,filtro,page);
    return response;
  }

   Future<PedidoListResponse>  listPedidosByVendedor(user,fecha) async {
    var response = await api.getPedidosByVendedor(user, fecha);
    return response;
  }


 Future<RouteListResponse>  listRoutesByVendedor(user,page,limit) async {
    var response = await api.getRoutesByVendedor(user, page, limit);
    return response;
  }

   Future<CustomerInfoResponse>  getCustomerInfo(user,codCliente) async {
    var response = await api.getCustomerInfo(user, codCliente);
    return response;
  }

}
