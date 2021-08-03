import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socios_app/bloc/bloc/customer_new_bloc.dart';
import 'package:socios_app/bloc/cubit/customer_key_cubit.dart';
import 'package:socios_app/bloc/cubit/customerfilter_cubit.dart';
import 'package:socios_app/models/response_model.dart';
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
          height: 40,
          margin: EdgeInsets.symmetric(
              horizontal: defaultMaxPadding, vertical: defaultMinPadding),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: fondoInput,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 40,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CupertinoTextField(
                            autofocus: false,
                            onChanged: (text) {
                              context.read<CustomerKeyCubit>().emitirKeys(text);

                              BlocProvider.of<CustomerNewBloc>(context).add(
                                  CustomerNewEvent.callListCustomerSearchKey(
                                      "DIAZPJOS",
                                      clienteFilterSelected?.codigo,
                                      txtControlerSearch.text,
                                      1));
                            },
                            style:
                                TextStyle(fontSize: 14, fontFamily: fontFamily),
                            controller: txtControlerSearch,
                            decoration: BoxDecoration(color: fondoInput),
                            placeholder: clienteFilterSelected?.codigo == "01"
                                ? "Ingrese nombre"
                                : "Ingrese dirección",
                            placeholderStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ),
                      BlocBuilder<CustomerKeyCubit, CustomerKeyState>(
                        builder: (context, state) {
                          return state.when(initial: ()=>Container(), emiteKeys: (key)=>key.isEmpty?Container():  IconButton(
                              icon: Icon(
                                Icons.close,
                                size: 20,
                              ),
                              // highlightColor: Colors.pink,
                              onPressed: () {
                                txtControlerSearch.text="";
                                 BlocProvider.of<CustomerNewBloc>(context).add(
                                CustomerNewEvent.callListCustomerSearchButton(
                                    "DIAZPJOS",
                                    clienteFilterSelected?.codigo,
                                    txtControlerSearch.text,
                                    1));
                              }));
                        },
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          // highlightColor: Colors.pink,
                          onPressed: () {
                            BlocProvider.of<CustomerNewBloc>(context).add(
                                CustomerNewEvent.callListCustomerSearchButton(
                                    "DIAZPJOS",
                                    clienteFilterSelected?.codigo,
                                    txtControlerSearch.text,
                                    1));
                          })
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
