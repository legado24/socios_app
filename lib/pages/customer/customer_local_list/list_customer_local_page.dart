import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/customer/customer_local_list/bloc/customer_local_list_bloc.dart';
import 'package:socios_app/pages/customer/customer_local_list/widgets/header_search_customer.dart';
import 'package:socios_app/pages/customer/customer_local_list/widgets/item_menu_sheet.dart';

import 'package:socios_app/utils/consts.dart';
import 'package:socios_app/utils/dimens.dart';
import 'package:socios_app/widgets/appbar_socios.dart';
import 'package:socios_app/widgets/bottom_loader.dart';

class ListCustomerLocalPage extends StatelessWidget {
  ListCustomerLocalPage({Key? key}) : super(key: key);

  final _scrollController = ScrollController();
  final txtControlerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SociosAppBar(title: "Clientes"),
      body: LayoutBuilder(
        builder: (_,BoxConstraints constraint) {
          return SingleChildScrollView(
            child: Column(children: [
              Container(
               
                height: MediaQuery.of(context).size.height*0.1, 
                child: Row( 
                  
                  children: [
                    Expanded(child: HeaderSearchCustomer()),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: defaultMaxPadding),
                  height: constraint.maxHeight * 0.9, //*0.9,
                  width: double.infinity,
                  child: NotificationListener<ScrollNotification>(
                      onNotification: (scrollNotif) =>
                          _handleScrollNotification(_, scrollNotif),
                      child: getWidgetList(context, constraint)))
            ]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.person_add),
        backgroundColor: primaryColor,
        mini: true,
      ),
    );
  }

  bool _handleScrollNotification(_, ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      BlocProvider.of<CustomerLocalListBloc>(_).add(
          CustomerLocalListEvent.callListCustomer(
              "DIAZPJOS", "01", txtControlerSearch.text, false));
    }

    return false;
  }

  getWidgetList(_, BoxConstraints constraints) {
    return BlocListener<CustomerLocalListBloc, CustomerLocalListState>(
        listener: (_, state) {
          print("state changed  ${state} ");
        },
        child: BlocBuilder<CustomerLocalListBloc, CustomerLocalListState>(
            bloc: BlocProvider.of<CustomerLocalListBloc>(
                _), //..add(CustomerNewEvent.callListCustomer("DIAZPJOS", "01", "")),
            builder: (context, state) {
              return state.when(
                  showProgress: () =>
                      Center(child: CircularProgressIndicator()),
                  data: (locales, hasReachedMax, tipoFiltro, page) => locales
                          .isEmpty
                      ? Text("Not found")
                      : ListView.builder(
                          itemCount: hasReachedMax
                              ? locales.length
                              : locales.length + 1,
                          controller: _scrollController,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return (index >= locales.length)
                                ?
                                /*   page>1? */
                                BottomLoader() //:SizedBox()
                                : Column(
                                    children: [
                                      ListTile(
                                        onTap: () => _settingModalBottomSheet(
                                            context,
                                            constraints,
                                            locales[index]),
                                        minLeadingWidth: 20,
                                        subtitle: Text(
                                          locales[index]
                                              .getDispatcher
                                              .getDescriptionLocal,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              fontFamily: "Poppins",
                                              fontStyle: FontStyle.normal),
                                        ),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 8),
                                          child: Text(
                                            "${locales[index].customer.getCode} - ${locales[index].customer.getDescription}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                        leading: Image(
                                            height: 40,
                                            image: (locales[index]
                                                        .customer
                                                        .getGenero ==
                                                    "M"
                                                ? AssetImage(
                                                    "assets/images/male_profile.png")
                                                : AssetImage(
                                                    "assets/images/female_profile.png"))),
                                        trailing: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 20.0),
                                          child: CircleAvatar(
                                              radius: 3.9,
                                              backgroundColor:
                                                  Colors.greenAccent),
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[400],
                                      )
                                    ],
                                  );
                          }),
                  initial: () => Text("data"),
                  failure: () =>
                      Center(child: Center(child: Text("NO HAY CONEXIÓN"))));
            }));
  }

  void _settingModalBottomSheet(
      context, BoxConstraints constraints, CustomerLocal local) {
    showModalBottomSheet(
        isScrollControlled: false,
        isDismissible: true,
        context: context,
        //backgroundColor: Colors.transparent,
        elevation: 4,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.grey[100],
                  toolbarHeight: 40,
                  automaticallyImplyLeading: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  title: Text(
                    "${local.customer.getDescription}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontFamily: "Poppins"),
                  ),
                ),
                Container(
                  child: new Wrap(
                    children: <Widget>[
                      ItemMenuSheet(
                        title: "Visualizar datos del cliente",
                        imageName: "infocustomer.png",
                        pageCall: "DatosCustomerPage",
                        codCliente: local.customer.getCode,
                      ),
                      ItemMenuSheet(
                          title: "Actualizar datos del cliente",
                          imageName: "editcustomer.png",
                          pageCall: "ActualizarDatosPage",
                          codCliente: local.customer.getCode),
                      ItemMenuSheet(
                        title: "Información de compras del cliente",
                        imageName: "comprascustomer.png",
                      ),
                      ItemMenuSheet(
                        title: "Pedidos",
                        imageName: "pedidoscustomer.png",
                      ),
                      ItemMenuSheet(
                        title: "¿Por que no hizo pedido?",
                        imageName: "icon_nopedido.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
