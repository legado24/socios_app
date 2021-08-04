import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socios_app/pages/home/bloc/daily_info_bloc.dart';
import 'package:socios_app/pages/home/bloc/routes_bloc.dart';
import 'package:socios_app/pages/home/widgets/bienvenida.dart';
import 'package:socios_app/pages/home/widgets/menu_home.dart';
import 'package:socios_app/pages/home/widgets/title_home.dart';
import 'package:socios_app/utils/dimens.dart';

import 'package:socios_app/widgets/appbar_socios.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
//with AutomaticKeepAliveClientMixin
{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SociosAppBar(
          title: "Inicio",
        ),
        body: LayoutBuilder(builder: (_, constraint) {
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
         /*      BlocBuilder<DailyInfoBloc, DailyInfoState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      showProgress: () => Text("cargando"),
                      orElse: () => MaterialButton(
                          height: 40,
                          child: Text("Adrian"),
                          onPressed: () => context
                              .read<DailyInfoBloc>()
                              .add(DailyInfoEvent.callInfoDiaria("DIAZPJOS"))));
                },
              ),
              */
              BienvenidaHome(
                constraints: constraint,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultMaxPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleHome(title: "Seguimiento diario"),
                    MenuHome(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: defaultMaxPadding,right: defaultMaxPadding,top: defaultMaxPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleHome(title: "Mis Rutas"),
                    Image(
                        height: 100,
                        width: 550,
                        image: AssetImage("assets/images/ruta_imagen.png")),
                    Container(
                      padding: EdgeInsets.all(defaultMaxPadding),
                      height: constraint.maxHeight * 0.3,
                      child: getWidgetListRoute(context),
                    ),
                  ],
                ),
              )
            ],
          ));
        }));
  }

  Widget getWidgetListRoute(BuildContext context) =>
      BlocConsumer<RoutesBloc, RoutesState>(
        bloc: context.read<RoutesBloc>()
          ..add(RoutesEvent.callListRoutes("DIAZPJOS", "1", "100")),
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.when(
              initial: () => Container(
                    child: Text("inicial"),
                  ),
              showProgress: () => Center(child: CircularProgressIndicator()),
              data: (routes) => routes.isEmpty
                  ? Center(child: Text("No data"))
                  : ListView.builder(
                      itemCount: routes.length,
                      itemBuilder: (BuildContext ctxt, int index) => InkWell(
                        onTap: () {
                          print("click");
                        },
                        child: Container(
                          // color: Colors.red,
                          width: double.infinity,
                          // height: MediaQuery.of(context).size.height * 0.08,
                          child: Column(
                            children: [
                              Divider(
                                color: Colors.grey[400],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "${routes[index].getDescription}",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "${routes[index].getCountEfectivos}/${routes[index].getCountClientes}",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/profile-user.svg",
                                          semanticsLabel: 'Acme Logo',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey[400],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
              failure: () =>
                  Center(child: Center(child: Text("NO HAY CONEXIÓN"))));
        },
      );

  /* @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; */
}
