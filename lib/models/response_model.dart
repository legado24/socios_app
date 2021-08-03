class StatusResponse {
  int? _statusCode;
  String? _statusText;
  StatusResponse(this._statusCode, this._statusText);
  factory StatusResponse.fromJson(dynamic json) {
    print(json);
    return StatusResponse(
        json['statusCode'] as int, json['statusText'] as String);
  }
}

class AvancePedido {
  String? statusPedido;
  int? total;
  double? totalImporte;

  AvancePedido({this.statusPedido, this.total, this.totalImporte});

  AvancePedido.fromJson(Map<String, dynamic> json) {
    statusPedido = json['statusPedido'];
    total = json['total'];
    totalImporte = json['totalImporte'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusPedido'] = this.statusPedido;
    data['total'] = this.total;
    data['totalImporte'] = this.totalImporte;

    return data;
  }
}

class ClienteFilter {
  String _codigo;
  String _urlImagen;
  String _textHint;

  ClienteFilter(this._codigo, this._urlImagen,
      [this._textHint = "Ingrese Nombre"]);

  get textHint => this._textHint;
  set seTextHint(String textHint) => this._textHint = textHint;
  get codigo => this._codigo;

  set setCodigo(String value) => this._codigo = value;

  get urlImagen => this._urlImagen;

  set setUrlImagen(value) => this._urlImagen = value;
  @override
  String toString() {
    return "${_codigo}";
  }
}

class InfoVentaDiariaResponse {
  //final id;
  double? _avanceVentas;
  String? _nombres;
  double? _necesidadDiaria;
  int? _diasAvance;
  int? _diasTotal;
  StatusResponse? _status;

  get diasAvance => this._diasAvance;

  set setDiasAvance(int? value) => this._diasAvance = value;

  get diasTotal => this._diasTotal;

  set setDiasTotal(value) => this._diasTotal = value;

  //InfoVentaDiariaResponse(this._nombres, this._avanceVentas,this._necesidadDiaria);

  get necesidadDiaria => this._necesidadDiaria;

  set setNecesidadDiaria(necesidadDiaria) =>
      this._necesidadDiaria = necesidadDiaria;

  get avanceVentas => this._avanceVentas;

  set setAvanceVentas(double? value) => this._avanceVentas = value;

  get nombres => this._nombres;

  set setNombres(value) => this._nombres = value;

  InfoVentaDiariaResponse.fromJson(Map<String, dynamic> json)
      : this._nombres = json['nombres'],
        this._avanceVentas = json['avanceVentas'],
        this._necesidadDiaria = json['necesidadDiaria'],
        this._diasAvance =
            int.parse(json['diasAvance'] == null ? 0 : json['diasAvance']),
        this._diasTotal =
            int.parse(json['diasTotal'] == null ? 0 : json['diasTotal']),
        this._status = StatusResponse.fromJson(json["status"]);
}

class Customer {
  String? _address;
  String? _cellPhone;
  String? _code;
  int? _creaLocal;
  String? _description;
  String? _dni;
  String? _email;
  String? _genero;
  String? _phone;
  String? _ruc;
  String? _status;
  String? _totalBonif;
  String? _totalBonifDirigida;

  Customer(
      this._address,
      this._cellPhone,
      this._code,
      this._creaLocal,
      this._description,
      this._dni,
      this._email,
      this._genero,
      this._phone,
      this._ruc,
      this._status,
      this._totalBonif,
      this._totalBonifDirigida);

  factory Customer.fromJson(dynamic json) {
    return Customer(
        json['address'],
        json['cellPhone'],
        json['code'],
        json['creaLocal'],
        json['description'],
        json['dni'],
        json['email'],
        json['genero'],
        json['phone'],
        json['ruc'],
        json['status'],
        json['totalBonif'],
        json['totalBonifDirigida']);
  }

  get getAddress => this._address;

  set setAddress(value) => this._address = value;

  get getCellPhone => this._cellPhone;

  set setCellPhone(value) => this._cellPhone = value;

  get getCode => this._code;

  set setCode(value) => this._code = value;

  get getCreaLocal => this._creaLocal;

  set setCreaLocal(value) => this._creaLocal = value;

  get getDescription => this._description;

  set setDescription(value) => this._description = value;

  get getDni => this._dni;

  set setDni(value) => this._dni = value;

  get getEmail => this._email;

  set setEmail(value) => this._email = value;

  get getGenero => this._genero;

  set setGenero(value) => this._genero = value;

  get getPhone => this._phone;

  set setPhone(value) => this._phone = value;

  get getRuc => this._ruc;

  set setRuc(value) => this._ruc = value;

  get getStatus => this._status;

  set setStatus(value) => this._status = value;

  get getTotalBonif => this._totalBonif;

  set setTotalBonif(value) => this._totalBonif = value;

  get getTotalBonifDirigida => this._totalBonifDirigida;

  set setTotalBonifDirigida(value) => this._totalBonifDirigida = value;
}

class Route {
  String? _code;
  Company? _company;
  int? _countClientes;
  int? _countEfectivos;
  String? _description;
  DivisionEmpresa? _division;
  //Route({this.name}); //This you already had before
  Route.empty(); //Add this later

  Route(this._code, this._company, this._countClientes, this._countEfectivos,
      this._description, this._division);

  get getCode => this._code;
  set setCode(value) => this._code = value;

  get getCompany => this._company;
  set setCompany(value) => this._company = value;

  get getCountClientes => this._countClientes;
  set setCountClientes(value) => this._countClientes = value;

  get getCountEfectivos => this._countEfectivos;
  set setCountEfectivos(value) => this._countEfectivos = value;

  get getDescription => this._description;
  set setDescription(value) => this._description = value;

  get getDivision => this._division;
  set setDivision(value) => this._division = value;

  factory Route.fromJson(dynamic json) {
    return json == null
        ? Route.empty()
        : Route(
            json['code'],
            Company.fromJson(json['company']),
            json['countClientes'],
            json['countEfectivos'],
            json['description'],
            DivisionEmpresa.fromJson(json['division']));
  }
}

class Company {
  String? _code;
  String? _description;
  Company(this._code, this._description);
  get getCode => this._code;
  set setDescription(value) => this._description = value;
  get getDescription => this._description;
  set setCode(value) => this._code = value;
  factory Company.fromJson(dynamic json) {
    return json == null
        ? Company(null, null)
        : Company(json['code'], json['description']);
  }
}

class DivisionEmpresa {
  String? _code;
  String? _description;

  DivisionEmpresa(this._code, this._description);

  get getCode => this._code;
  set setDescription(value) => this._description = value;
  get getDescription => this._description;
  set setCode(value) => this._code = value;
  factory DivisionEmpresa.fromJson(dynamic json) {
    return json == null
        ? DivisionEmpresa(null, null)
        : DivisionEmpresa(json['code'], json['description']);
  }
}

class ListaPrecios {
  String? _codCompany;
  String? _codSede;
  String? _code;
  String? _description;

  ListaPrecios(this._codCompany, this._codSede, this._code, this._description);
  factory ListaPrecios.fromJson(dynamic json) {
    if (json == null) {
      return new ListaPrecios(null, null, null, null);
    } else {
      return ListaPrecios(json['codCompany'], json['codSede'], json['code'],
          json['description']);
    }
  }
}

class DispatchAddress {
  String? _codTipoVisita;
  String? _code;
  String? _description;
  ListaPrecios? _listaPrecios;
  Route? _route;
  String? _statusLocal;

  get getCodTipoVisita => this._codTipoVisita;
  get getDescriptionLocal => this._description;

  DispatchAddress(this._codTipoVisita, this._code, this._description,
      this._listaPrecios, this._route, this._statusLocal);

  factory DispatchAddress.fromJson(dynamic json) {
    return DispatchAddress(
        json['codTipoVisita'],
        json['code'],
        json['description'],
        ListaPrecios.fromJson(json['listaPrecios']),
        Route.fromJson(json['route']),
        json['statusLocal']);
  }
}

class CustomerLocal {
  Customer _customer;
  DispatchAddress _dispatchAddress;

  Customer get customer => this._customer;
  DispatchAddress get getDispatcher => this._dispatchAddress;
  CustomerLocal(this._customer, this._dispatchAddress);

  factory CustomerLocal.fromJson(dynamic json) {
    return CustomerLocal(Customer.fromJson(json['customer']),
        DispatchAddress.fromJson(json['dispatchAddress']));
  }
}

class CustomerLocalListResponse {
  List<CustomerLocal> _customerLocals;
  StatusResponse _status;

  List<CustomerLocal> get getCustomerLocals => this._customerLocals;

  CustomerLocalListResponse(this._customerLocals, this._status);

  factory CustomerLocalListResponse.fromJson(dynamic json) {
    if (json['customerLocals'] != null) {
      var customerLocalsObjsJson = json['customerLocals'] as List;
      List<CustomerLocal> _customerLocals = customerLocalsObjsJson
          .map((tagJson) => CustomerLocal.fromJson(tagJson))
          .toList();

      return CustomerLocalListResponse(
          _customerLocals, StatusResponse.fromJson(json['status']));
    } else {
      //return  CustomerLocalListResponse(StatusResponse.fromJson(json['status'])));
      return CustomerLocalListResponse(
          [], StatusResponse.fromJson(json['status']));
    }
  }
}

class TipoDoc {
  String? _code;
  String? _description;
  TipoDoc(this._code, this._description);
  get code => this._code;

  set code(value) => this._code = value;

  get description => this._description;

  set description(value) => this._description = value;
  factory TipoDoc.fromJson(dynamic json) {
    return TipoDoc(json['code'], json['description']);
  }
}

class Product {
  String? _avance;
  String? _code;
  String? _description;
  int? _disponible;
  int? _isBonif;
  int? _isSugerido;
  double? _priceBase;
  double? _priceSugerido;
  String? _um;
  String? _uri;
  Product(
      this._avance,
      this._code,
      this._description,
      this._disponible,
      this._isBonif,
      this._isSugerido,
      this._priceBase,
      this._priceSugerido,
      this._um,
      this._uri);

  factory Product.fromJson(dynamic json) {
    return Product(
        json['avance'],
        json['code'],
        json['description'],
        json['disponible'],
        json['isBonif'],
        json['isSugerido'],
        json['priceBase'],
        json['priceSugerido'],
        json['um'],
        json['uri']);
  }

  get avance => this._avance;

  set avance(value) => this._avance = value;

  get code => this._code;

  set code(value) => this._code = value;

  get description => this._description;

  set description(value) => this._description = value;

  get disponible => this._disponible;

  set disponible(value) => this._disponible = value;

  get isBonif => this._isBonif;

  set isBonif(value) => this._isBonif = value;

  get isSugerido => this._isSugerido;

  set isSugerido(value) => this._isSugerido = value;

  get getPriceBase => this._priceBase;

  set setPriceBase(priceBase) => this._priceBase = priceBase;

  get getPriceSugerido => this._priceSugerido;

  set setPriceSugerido(priceSugerido) => this._priceSugerido = priceSugerido;

  get getUm => this._um;

  set setUm(um) => this._um = um;

  get getUri => this._uri;

  set setUri(uri) => this._uri = uri;
}

class DetallePedido {
  int? _cantidad;
  int? _disponible;
  double? _importeDescuentos;
  double? _importeIgv;
  double? _importeIsc;
  double? _importeIvap;
  double? _importePercepcion;
  double? _importeTotal;
  Product? _product;

  DetallePedido(
      this._cantidad,
      this._disponible,
      this._importeDescuentos,
      this._importeIgv,
      this._importeIsc,
      this._importeIvap,
      this._importePercepcion,
      this._importeTotal,
      this._product);

  factory DetallePedido.fromJson(dynamic json) {
    return DetallePedido(
        json['cantidad'],
        json['disponible'],
        json['importeDescuentos'],
        json['importeIgv'],
        json['importeIsc'],
        json['importeIvap'],
        json['importePercepcion'],
        json['importeTotal'],
        Product.fromJson('product'));
  }

  int? get cantidad => this._cantidad;

  set cantidad(int? value) => this._cantidad = value;

  get importeDescuentos => this._importeDescuentos;

  set importeDescuentos(value) => this._importeDescuentos = value;

  get importeIgv => this._importeIgv;

  set importeIgv(value) => this._importeIgv = value;

  get importeIsc => this._importeIsc;

  set importeIsc(value) => this._importeIsc = value;

  get importeIvap => this._importeIvap;

  set importeIvap(value) => this._importeIvap = value;

  get importePercepcion => this._importePercepcion;

  set importePercepcion(value) => this._importePercepcion = value;

  get importeTotal => this._importeTotal;

  set importeTotal(value) => this._importeTotal = value;

  get product => this._product;

  set product(value) => this._product = value;
}

class Pedido {
  String? _codAlmacen;
  String? _codApp;
  String? _codCanal;
  String? _codCondicion;
  String? _codDivision;
  String? _codEmpresa;
  String? _codListaPrecios;
  String? _codLocalidad;
  String? _codMesa;
  String? _codSede;
  String? _codVendedor;
  Customer? _customer;
  List<DetallePedido>? _detallePedidos;
  DispatchAddress? _dispatchAddress;
  String? _fechaPedido;
  String? _idCarrito;
  String? _idCarritoEdit;
  String? _nroPedido;
  Route? _route;
  String? _statusPedido;
  TipoDoc? _tipoDoc;
  double? _totalDescuentos;
  double? _totalFlete;
  double? _totalIgv;
  double? _totalImporte;
  double? _totalPercepcion;
  String? _usuario;

  Pedido(
      this._codAlmacen,
      this._codApp,
      this._codCanal,
      this._codCondicion,
      this._codDivision,
      this._codEmpresa,
      this._codListaPrecios,
      this._codLocalidad,
      this._codMesa,
      this._codSede,
      this._codVendedor,
      this._customer,
      this._detallePedidos,
      this._dispatchAddress,
      this._fechaPedido,
      this._idCarrito,
      this._idCarritoEdit,
      this._nroPedido,
      this._route,
      this._statusPedido,
      this._tipoDoc,
      this._totalDescuentos,
      this._totalFlete,
      this._totalIgv,
      this._totalImporte,
      this._totalPercepcion,
      this._usuario);

  factory Pedido.fromJson(dynamic json) {
    List<DetallePedido>? _detallePedidos;
    if (json['detallePedidos'] != null) {
      var detallePedidosObjsJson = json['detallePedidos'] as List;
      _detallePedidos = detallePedidosObjsJson
          .map((tagJson) => DetallePedido.fromJson(tagJson))
          .toList();
    } else {
      _detallePedidos = [];
    }

    return Pedido(
      json['codAlmacen'],
      json['codApp'],
      json['codCanal'],
      json['codCondicion'],
      json['codDivision'],
      json['codEmpresa'],
      json['codListaPrecios'],
      json['codLocalidad'],
      json['codMesa'],
      json['codSede'],
      json['codVendedor'],
      Customer.fromJson(json['customer']),
      _detallePedidos,
      DispatchAddress.fromJson(json['dispatchAddress']),
      json['fechaPedido'],
      json['idCarrito'],
      json['idCarritoEdit'],
      json['nroPedido'],
      Route.fromJson(json['route']),
      json['statusPedido'],
      TipoDoc.fromJson(json['tipoDoc']),
      json['totalDescuentos'],
      json['totalFlete'],
      json['totalIgv'],
      json['totalImporte'],
      json['totalPercepcion'],
      json['usuario'],
    );
  }

  get codAlmacen => this._codAlmacen;

  set codAlmacen(value) => this._codAlmacen = value;

  get codApp => this._codApp;

  set codApp(value) => this._codApp = value;

  get codCanal => this._codCanal;

  set codCanal(value) => this._codCanal = value;

  get codCondicion => this._codCondicion;

  set codCondicion(value) => this._codCondicion = value;

  get codDivision => this._codDivision;

  set codDivision(value) => this._codDivision = value;

  get codEmpresa => this._codEmpresa;

  set codEmpresa(value) => this._codEmpresa = value;

  get codListaPrecios => this._codListaPrecios;

  set codListaPrecios(value) => this._codListaPrecios = value;

  get codLocalidad => this._codLocalidad;

  set codLocalidad(value) => this._codLocalidad = value;

  get codMesa => this._codMesa;

  set codMesa(value) => this._codMesa = value;

  get codSede => this._codSede;

  set codSede(value) => this._codSede = value;

  get codVendedor => this._codVendedor;

  set codVendedor(value) => this._codVendedor = value;

  Customer? get customer => this._customer;

  set customer(value) => this._customer = value;

  List<DetallePedido>? get getDetallePedidos => this._detallePedidos;

  set setDetallePedidos(List<DetallePedido> detallePedidos) =>
      this._detallePedidos = detallePedidos;

  get fechaPedido => this._fechaPedido;

  set fechaPedido(value) => this._fechaPedido = value;

  get idCarrito => this._idCarrito;

  set idCarrito(value) => this._idCarrito = value;

  get idCarritoEdit => this._idCarritoEdit;

  set idCarritoEdit(value) => this._idCarritoEdit = value;

  get nroPedido => this._nroPedido;

  set nroPedido(value) => this._nroPedido = value;

  get route => this._route;

  set route(value) => this._route = value;

  get statusPedido => this._statusPedido;

  set statusPedido(value) => this._statusPedido = value;

  get tipoDoc => this._tipoDoc;

  set tipoDoc(value) => this._tipoDoc = value;

  get totalDescuentos => this._totalDescuentos;

  set totalDescuentos(value) => this._totalDescuentos = value;

  get totalFlete => this._totalFlete;

  set totalFlete(value) => this._totalFlete = value;

  get totalIgv => this._totalIgv;

  set totalIgv(value) => this._totalIgv = value;

  get totalImporte => this._totalImporte;

  set totalImporte(value) => this._totalImporte = value;

  get totalPercepcion => this._totalPercepcion;

  set totalPercepcion(value) => this._totalPercepcion = value;

  get usuario => this._usuario;

  set usuario(value) => this._usuario = value;
}

class PedidoListResponse {
  List<Pedido>? _pedidos;
  StatusResponse? _status;

  PedidoListResponse(this._pedidos, this._status);
  factory PedidoListResponse.fromJson(dynamic json) {
    if (json['pedidos'] != null) {
      var pedidosObjsJson = json['pedidos'] as List;
      List<Pedido> _pedidos =
          pedidosObjsJson.map((tagJson) => Pedido.fromJson(tagJson)).toList();

      return PedidoListResponse(
          _pedidos, StatusResponse.fromJson(json['status']));
    } else {
      //return  CustomerLocalListResponse(StatusResponse.fromJson(json['status'])));
      return PedidoListResponse([], StatusResponse.fromJson(json['status']));
    }
  }

  get getPedidos => this._pedidos;

  set setPedidos(pedidos) => this._pedidos = pedidos;

  get getStatus => this._status;

  set setStatus(status) => this._status = status;
}

class RouteListResponse {
  List<Route> _routes;
  StatusResponse _statusResponse;

  RouteListResponse(this._routes, this._statusResponse);

  List<Route> get routes => this._routes;

  set routes(List<Route> value) => this._routes = value;

  get statusResponse => this._statusResponse;

  set statusResponse(value) => this._statusResponse = value;

  factory RouteListResponse.fromJson(dynamic json) {
    if (json['routes'] != null) {
      var routesObjsJson = json['routes'] as List;
      List<Route> _routes =
          routesObjsJson.map((tagJson) => Route.fromJson(tagJson)).toList();

      return RouteListResponse(
          _routes, StatusResponse.fromJson(json['status']));
    } else {
      //return  CustomerLocalListResponse(StatusResponse.fromJson(json['status'])));
      return RouteListResponse([], StatusResponse.fromJson(json['status']));
    }
  }
}

class CustomerInfoResponse {
  List<DispatchAddress>? _addresses;
  Customer _customer;
  String? _validateClientStatus;
  StatusResponse? _status;
  
  CustomerInfoResponse(this._addresses, this._customer,
      this._validateClientStatus, this._status);

  factory CustomerInfoResponse.fromJson(dynamic json) {
    if (json['addresses'] != null) {
      var routesObjsAddresses = json['addresses'] as List;
      List<DispatchAddress> _addresses = routesObjsAddresses
          .map((tagJson) => DispatchAddress.fromJson(tagJson))
          .toList();

      return CustomerInfoResponse(_addresses, Customer.fromJson(json["customer"]),json["validateClientStatus"],
          StatusResponse.fromJson(json['status']));
    } else {
      //return  CustomerLocalListResponse(StatusResponse.fromJson(json['status'])));
      return CustomerInfoResponse([],Customer.fromJson(json["customer"]), json["validateClientStatus"],StatusResponse.fromJson(json['status']));
    }
  }
List<DispatchAddress>? get addresses => this._addresses;
  set addresses(value) => this._addresses = value;

  String? get validateClientStatus => this._validateClientStatus;

  set validateClientStatus(String? value) => this._validateClientStatus = value;

  Customer get customer => this._customer;

  set customer(value) => this._customer = value;

  get status => this._status;

  set status(value) => this._status = value;
}

class CustomerParameterPageScreen{
  String codCliente;
  CustomerParameterPageScreen(this.codCliente);
}
