import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:socios_app/pages/pedidos/bloc/pedidos_list_bloc.dart';

import 'package:socios_app/utils/colors.dart';
import 'package:socios_app/utils/dimens.dart';
import 'package:socios_app/widgets/appbar_socios.dart';

class PedidosListPage extends StatelessWidget {
  PedidosListPage({Key? key}) : super(key: key);
  var txtController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    txtController.text = getCurrentDate();
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
        appBar: SociosAppBar(title: "Pedidos"),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.all(defaultMaxPadding),
                      child: Row(
                        children: [
                          Image(
                              height: 20,
                              width: 20,
                              image: AssetImage(
                                  "assets/images/calendar_blue.png")),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Fecha",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ),
                //  Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 2,
                  child: Container(
                    //padding: EdgeInsets.only(right: defaultMaxPadding),
                    child: GestureDetector(
                      onTap: () {
                        showDatePicker(
                                context: context,
                                initialDate: txtController.text.isEmpty
                                    ? DateTime.now()
                                    : DateFormat("dd-MM-yyyy")
                                        .parse(txtController.text),
                                firstDate: DateTime(DateTime.now().year - 100),
                                lastDate: DateTime(DateTime.now().year + 1))
                            .then((value) {
                          txtController.text =
                              '${value!.day.toString().padLeft(2, '0')}-${value.month.toString().padLeft(2, '0')}-${value.year.toString()}';
                          context.read<PedidosListBloc>().add(
                              PedidosListEvent.callListPedidos( {"usuario": "DIAZPJOS","fecha":txtController.text}));
                        });
                      },
                      child: TextField(
                          decoration: InputDecoration(
                            // suffixIconConstraints: constraint,
                            suffixStyle: TextStyle(fontSize: 3),
                            suffixIcon: Icon(Icons.arrow_drop_down),
                            border: InputBorder.none,
                          ),
                          controller: txtController,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          enabled: false),
                    ),
                  ),
                ),
              ],
            ),
            Container(height: size.height * 0.90, child: getWidgetList(context))
          ]),
        ));
  }

  getCurrentDate() {
    return DateFormat('dd-MM-yyyy').format(DateTime.now());
  }

  Widget getWidgetList(_) {
    
    return BlocListener<PedidosListBloc, PedidosListState>(
        listener: (_, state) {
          print("state changed  ${state} ");
        },
        child: BlocBuilder<PedidosListBloc, PedidosListState>(
            bloc: BlocProvider.of<PedidosListBloc>(_)
              ..add(PedidosListEvent.callListPedidos( {"usuario": "DIAZPJOS","fecha":txtController.text})),
            builder: (context, state) {
              return state.when(
                  showProgress: () =>
                      Center(child: CircularProgressIndicator()),
                  data: (pedidos) => pedidos.isEmpty
                      ? Lottie.asset('assets/lottie/empty_box.json')
                      : ListView.builder(
                          itemCount: pedidos.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            late Color colorStatus;
                            if (pedidos[index].statusPedido == "APROBADO") {
                              colorStatus = colorAprobado;
                            } else if (pedidos[index].statusPedido ==
                                "ENTREGADO") {
                              colorStatus = colorEntregado;
                            } else if (pedidos[index].statusPedido ==
                                "FACTURADO") {
                              colorStatus = colorFacturado;
                            } else if (pedidos[index].statusPedido ==
                                "REFACTURADO") {
                              colorStatus = colorReFacturado;
                            } else if (pedidos[index].statusPedido ==
                                "ANULADO") {
                              colorStatus = colorAnulado;
                            } else if (pedidos[index].statusPedido ==
                                "REBOTADO") {
                              colorStatus = colorRebotado;
                            } else if (pedidos[index].statusPedido ==
                                "INGRESADO") {
                              colorStatus = colorIngresado;
                            }

                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMaxPadding),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Container(
                                            child: Row(
                                          children: [
                                            Image(
                                                height: 18,
                                                width: 18,
                                                image: AssetImage(
                                                    "assets/images/package_box.png")),
                                            /*  SizedBox(
                                              width: 6,
                                            ), */
                                            Expanded(
                                              child: Text(
                                                  "${pedidos[index].nroPedido}  ${pedidos[index].codCondicion}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Poppins")),
                                            ),
                                          ],
                                        )),
                                      ),
                                      Expanded(flex: 1, child: SizedBox()),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: colorStatus,
                                              border: Border.all(
                                                  color: colorStatus, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Text(
                                                pedidos[index].statusPedido,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 8,
                                                    fontFamily: "Poppins"))),
                                      ),
                                    ],
                                  ),
                                  /* SizedBox(
                                    height: 15,
                                  ), */
                                  Container(
                                      child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                          height: 18,
                                          width: 18,
                                          image: AssetImage(
                                              "assets/images/id_card.png")),
                                      /*   SizedBox(
                                        width: 5,
                                      ), */
                                      Expanded(
                                        child: Text(
                                            pedidos[index]
                                                .customer!
                                                .getDescription,
                                            style: TextStyle(
                                                fontFamily: "Poppins")),
                                      ),
                                    ],
                                  )),
                              /*     SizedBox(
                                    height: 15,
                                  ), */
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                  height: 18,
                                                  width: 18,
                                                  image: AssetImage(
                                                      "assets/images/calendar.png")),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  "${pedidos[index].fechaPedido}")
                                            ],
                                          ),
                                        ),
                                      ),
                                     /*  Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          height: 4,
                                        ),
                                      ), */
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Row(children: [
                                            Image(
                                                height: 18,
                                                width: 18,
                                                image: AssetImage(
                                                    "assets/images/coins.png")),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                                "${pedidos[index].totalImporte}")
                                          ]),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: 4,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Divider(
                                    color: Colors.grey[400],
                                  )
                                ],
                              ),
                            );
                          }),
                  initial: () => Text("data"),
                  failure: () =>
                      Center(child: Center(child: Text("NO HAY CONEXIÓN"))));
            }));
  }
}
