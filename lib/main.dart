import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:socios_app/main_screen.dart';
import 'package:socios_app/pages/customer/customer_local_list/bloc/customer_local_list_bloc.dart';
import 'package:socios_app/pages/customer/customer_local_list/cubit/customer_key_cubit.dart';
import 'package:socios_app/pages/customer/subpages/actualizar_datos.dart';
import 'package:socios_app/pages/customer/customer_info/customer_info.dart';
import 'package:socios_app/pages/home/bloc/daily_info_bloc.dart';
import 'package:socios_app/pages/pedidos/bloc/pedidos_list_bloc.dart';
import 'package:socios_app/repository/socios_repository.dart';
import 'package:socios_app/utils/consts.dart';

import 'pages/customer/customer_info/bloc/customer_info_bloc.dart';
import 'pages/customer/customer_local_list/cubit/customerfilter_cubit.dart';
import 'pages/home/bloc/routes_bloc.dart';
import 'socios_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'SOCIOS_APP',
      initialRoute: '/',
      routes: {
        '/': (context) => MultiBlocProvider(providers: [
              BlocProvider(
                lazy: false,
                create: (context) => CustomerKeyCubit(),
              ),
              BlocProvider(create: (_) => DailyInfoBloc(SociosRepository())),
              BlocProvider(
                  create: (_) => CustomerLocalListBloc(SociosRepository())),
              BlocProvider(
                lazy: false,
                create: (context) =>
                    CustomerfilterCubit(context.read<CustomerLocalListBloc>()),
              ),
              BlocProvider(create: (_) => PedidosListBloc(SociosRepository())),
              BlocProvider(create: (_) => RoutesBloc(SociosRepository())),
            ], child: MainScreen()),
        '/DatosCustomerPage': (context) => BlocProvider(
              create: (context) => CustomerInfoBloc(SociosRepository()),
              child: DatosCustomerPage(),
            ),
        '/ActualizarDatosPage': (context) => const ActualizarDatosPage(),
      },
    );
  }
}
