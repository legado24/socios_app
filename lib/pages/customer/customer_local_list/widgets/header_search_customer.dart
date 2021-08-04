import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/customer/customer_local_list/bloc/customer_local_list_bloc.dart';
import 'package:socios_app/pages/customer/customer_local_list/cubit/customer_key_cubit.dart';
import 'package:socios_app/pages/customer/customer_local_list/cubit/customerfilter_cubit.dart';
import 'package:socios_app/utils/colors.dart';
import 'package:socios_app/utils/consts.dart';
import 'package:socios_app/utils/dimens.dart';

class HeaderSearchCustomer extends StatefulWidget {
  HeaderSearchCustomer({Key? key}) : super(key: key);

  @override
  _HeaderSearchCustomerState createState() => _HeaderSearchCustomerState();
}

class _HeaderSearchCustomerState extends State<HeaderSearchCustomer> {
  final txtControlerSearch = TextEditingController();

  List<ClienteFilter> filters = [
    ClienteFilter("01", "assets/images/ic_cliente.png"),
    ClienteFilter("02", "assets/images/home_house.png"),
  ];
  ClienteFilter? clienteFilterSelected;

  @override
  void initState() {
    super.initState();
    context
        .read<CustomerfilterCubit>()
        .emitirFiltros(filters[0], "DIAZPJOS", txtControlerSearch.text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerfilterCubit, CustomerfilterState>(
      listener: (context, state) {},
      builder: (context, state) {
        clienteFilterSelected =
            state.when(initial: () => filters[0], filter: (value) => value);
        return Container(
          width: double.infinity,
          //color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: defaultMaxPadding),
          height: 40,

          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 40,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(defaultMaxPadding),
                        child: DropdownButton<ClienteFilter>(
                            value: clienteFilterSelected,
                            iconSize: 15,
                            elevation: 0,
                            isDense: false,
                            items: filters.map<DropdownMenuItem<ClienteFilter>>(
                                (ClienteFilter value) {
                              return DropdownMenuItem<ClienteFilter>(
                                value: value,
                                child: Center(
                                  child: Image(
                                      height: 15,
                                      width: 15,
                                      image: AssetImage(value.urlImagen)),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              context.read<CustomerfilterCubit>().emitirFiltros(
                                  value, "DIAZPJOS", txtControlerSearch.text);
                            }),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                     //   color: Colors.green,
                                        child: CupertinoTextField(
                                          autofocus: false,
                                          onChanged: (text) {
                                            context
                                                .read<CustomerKeyCubit>()
                                                .emitirKeys(text);

                                            BlocProvider.of<
                                                        CustomerLocalListBloc>(
                                                    context)
                                                .add(CustomerLocalListEvent
                                                    .callListCustomerSearchKey(
                                                        "DIAZPJOS",
                                                        clienteFilterSelected
                                                            ?.codigo,
                                                        txtControlerSearch.text,
                                                        1));
                                          },
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: fontFamily),
                                          controller: txtControlerSearch,
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                          placeholder:
                                              clienteFilterSelected?.codigo ==
                                                      "01"
                                                  ? "Ingrese nombre"
                                                  : "Ingrese dirección",
                                          placeholderStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[400],
                                            fontFamily: fontFamily,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                   // color: Colors.yellow,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: BlocBuilder<CustomerKeyCubit, CustomerKeyState>(
                              builder: (context, state) {
                                return state.when(
                                    initial: () => Container(),
                                    emiteKeys: (key) => key.isEmpty
                                        ? Container()
                                        : IconButton(
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.all(0),
                                            icon: Icon(
                                              Icons.close,
                                              size: 20,
                                            ),
                                            onPressed: () {
                                              txtControlerSearch.text = "";
                                              BlocProvider.of<
                                                          CustomerLocalListBloc>(
                                                      context)
                                                  .add(CustomerLocalListEvent
                                                      .callListCustomerSearchButton(
                                                          "DIAZPJOS",
                                                          clienteFilterSelected
                                                              ?.codigo,
                                                          txtControlerSearch
                                                              .text,
                                                          1));
                                            }));
                              },
                            ),
                                        ),
                                        Expanded(
                                          child: IconButton(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.all(0),
                                              icon: Icon(
                                                Icons.search,
                                                size: 20,
                                              ),
                                              // highlightColor: Colors.pink,
                                              onPressed: () {
                                                BlocProvider.of<
                                                            CustomerLocalListBloc>(
                                                        context)
                                                    .add(CustomerLocalListEvent
                                                        .callListCustomerSearchButton(
                                                            "DIAZPJOS",
                                                            clienteFilterSelected
                                                                ?.codigo,
                                                            txtControlerSearch
                                                                .text,
                                                            1));
                                              }),
                                        ),
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
