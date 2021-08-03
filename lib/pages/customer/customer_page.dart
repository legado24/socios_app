import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/customer/customer_local_list/bloc/customer_local_list_bloc.dart';
import 'package:socios_app/pages/home/bloc/daily_info_bloc.dart';
import 'package:socios_app/utils/colors.dart';
import 'package:socios_app/utils/consts.dart';
import 'package:socios_app/utils/dimens.dart';
import 'package:socios_app/widgets/appbar_socios.dart';
import 'package:socios_app/widgets/bottom_loader.dart';

class CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  late ClienteFilter clienteFilterSelected;
  final _scrollController = ScrollController();
  final txtControlerSearch = TextEditingController();
  List<ClienteFilter> _filters = [
    ClienteFilter("01", "assets/images/ic_cliente.png"),
    ClienteFilter("02", "assets/images/home_house.png"),
  ];

  @override
  void initState() {
    super.initState();
    clienteFilterSelected = _filters[0];
    context.read<DailyInfoBloc>()..add(DailyInfoEvent.reInit());
    context.read<CustomerLocalListBloc>() 
      ..add(CustomerLocalListEvent.callListCustomer("DIAZPJOS",
          clienteFilterSelected.codigo, txtControlerSearch.text, 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SociosAppBar(title: "Clientes"),
      body: LayoutBuilder(
        builder: (_, constraint) {
          return SingleChildScrollView(
            child: Column(children: [
              Container(
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
                            //border: Border.all(color: fondoInput),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 40,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: DropdownButton<ClienteFilter>(
                                  value: clienteFilterSelected,
                                //  icon: Icon(Icons.keyboard_arrow_down),
                                
                                
                                  iconSize: 15,
                                  elevation:0,
                                  isDense: false,
                                  items: _filters
                                      .map<DropdownMenuItem<ClienteFilter>>(
                                          (ClienteFilter value) {
                                    return DropdownMenuItem<ClienteFilter>(
                                      value: value,
                                      child: //Row(children: <Widget>[
                                          Center(
                                        child: Image(
                                            height: 15,
                                            width:15,
                                            image: AssetImage(value.urlImagen)),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) => {
                                        setState(() {
                                          clienteFilterSelected =
                                              value ?? clienteFilterSelected;
                                          clienteFilterSelected.codigo == "02"
                                              ? clienteFilterSelected
                                                      .seTextHint =
                                                  "Ingrese dirección"
                                              : clienteFilterSelected.textHint;
                                          context.read<CustomerLocalListBloc>()
                                            ..add(CustomerLocalListEvent
                                                .callListCustomerFilterSelected(
                                                    "DIAZPJOS",
                                                    value!.codigo,
                                                    txtControlerSearch.text,
                                                    1));
                                        })
                                      }),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: CupertinoTextField(
                                  onChanged: (text) => {
                                    context.read<CustomerLocalListBloc>()
                                      ..add(CustomerLocalListEvent
                                          .callListCustomerSearchKey(
                                              "DIAZPJOS",
                                              clienteFilterSelected.codigo,
                                              txtControlerSearch.text,
                                              1))
                                  },
                                  style: TextStyle(fontSize: 14,fontFamily: fontFamily),
                                  controller: txtControlerSearch,
                                  decoration: BoxDecoration(color: fondoInput),
                                  placeholder: clienteFilterSelected.textHint,
                                  placeholderStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.search,
                                  size: 20,
                                ),
                               // highlightColor: Colors.pink,
                                onPressed: () {
                                  context.read<CustomerLocalListBloc>()
                                    ..add(CustomerLocalListEvent
                                        .callListCustomerSearchButton(
                                            "DIAZPJOS",
                                            clienteFilterSelected.codigo,
                                            txtControlerSearch.text,
                                            1));
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: defaultMaxPadding),
                  height: constraint.constrainHeight() * 0.9, //*0.9,
                  width: double.infinity,
                  child: NotificationListener<ScrollNotification>(
                      onNotification: _handleScrollNotification,
                      child: getWidgetList()))
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

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      BlocProvider.of<CustomerLocalListBloc>(context).add(
          CustomerLocalListEvent.callListCustomer(
              "DIAZPJOS", "01", txtControlerSearch.text, false));
    }

    return false;
  }

  getWidgetList() {
    return BlocListener<CustomerLocalListBloc, CustomerLocalListState>(
        listener: (_, state) {
      print("state changed  ${state} ");
    }, child: BlocBuilder<CustomerLocalListBloc, CustomerLocalListState>(
            builder: (context, state) {
      return state.when(
          showProgress: () => Center(child: CircularProgressIndicator()),
          data: (locales, hasReachedMax, tipoFiltro, page) => locales.isEmpty
              ? Text("Not found")
              : ListView.builder(
                  itemCount:
                      hasReachedMax ? locales.length : locales.length + 1,
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
                                    context, locales[index]),
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
                                  padding: const EdgeInsets.only(bottom: 8),
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
                                    image: (locales[index].customer.getGenero ==
                                            "M"
                                        ? AssetImage(
                                            "assets/images/male_profile.png")
                                        : AssetImage(
                                            "assets/images/female_profile.png"))),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: CircleAvatar(
                                      radius: 3.9,
                                      backgroundColor: Colors.greenAccent),
                                ),
                              ),
                              Divider(
                                color: Colors.grey[400],
                              )
                            ],
                          );
                  }),
          initial: () => Text("data"),
          failure: () => Center(child: Center(child: Text("NO HAY CONEXIÓN"))));
    }));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _settingModalBottomSheet(context, CustomerLocal local) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return 
          
          Column(
            children: [
              AppBar(title:Text("${local.customer.getDescription}")),
              Container(
                child: new Wrap(
                  children: <Widget>[
                    new ListTile(
                        leading: new Icon(Icons.music_note),
                        title: new Text("${local.customer.getDescription}"),
                        onTap: () => {}),
                    new ListTile(
                      leading: new Icon(Icons.videocam),
                      title: new Text('Video'),
                      onTap: () => {},
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

}
