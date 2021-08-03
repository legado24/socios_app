import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socios_app/bloc/bloc/customer_new_bloc.dart';
import 'package:socios_app/bloc/bloc/home_new_bloc.dart';
import 'package:socios_app/bloc/bloc/list_pedidos_bloc.dart';
import 'package:socios_app/bloc/bloc/routes_bloc.dart';
import 'package:socios_app/pages/customer/customer_page.dart';
import 'package:socios_app/pages/customer/list_customer_local_page.dart';
import 'package:socios_app/pages/home/home_page.dart';
import 'package:socios_app/pages/pedidos/pedidos_list_page.dart';
import 'package:socios_app/utils/consts.dart';

import 'utils/dialogs.dart';
 

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;
  
  

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Dialogs().showExitDialog(context),
      child: Scaffold(
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: onPageChanged,
            children: <Widget>[
           
              HomePage(),
            ListCustomerLocalPage(),
             PedidosListPage()
            
             
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 18,
             
            showSelectedLabels: true,
            showUnselectedLabels: false,
            backgroundColor: Colors.black,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey[500],
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Inicio"),
               BottomNavigationBarItem(
                  icon: Icon(Icons.group_sharp), label: "Clientes"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt), label: "Pedidos"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.store_outlined), label: "Articulos"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monetization_on_outlined),
                  label: "Cobranza"), 
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          )),
    );
  }

  void navigationTapped(int page) {

    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    BlocProvider.of<HomeNewBloc>(context).close();
    BlocProvider.of<CustomerNewBloc>(context).close();
    BlocProvider.of<ListPedidosBloc>(context).close();
    BlocProvider.of<RoutesBloc>(context).close();
  }

  void onPageChanged(int page) {
    
    setState(() {
       
      this._page = page;
    });
  }
}
