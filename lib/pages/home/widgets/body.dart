 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socios_app/pages/home/bloc/daily_info_bloc.dart';
import 'package:socios_app/pages/home/bloc/routes_bloc.dart';



import 'package:socios_app/pages/home/widgets/bienvenida.dart';
import 'package:socios_app/pages/home/widgets/menu_home.dart';
import 'package:socios_app/pages/home/widgets/title_home.dart';
 import 'package:socios_app/utils/dimens.dart';

class BodyHome extends StatelessWidget {
    BodyHome(this._constrains);
final BoxConstraints _constrains;
  @override
  Widget build(BuildContext context) {
     

    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BlocBuilder<DailyInfoBloc, DailyInfoState>(
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
          BienvenidaHome( constraints: _constrains,
          ),
          TitleHome(title: "Seguimiento diario"),
          SizedBox(height: defaultMaxPadding),
          MenuHome(),
          SizedBox(height: defaultMaxPadding),
          TitleHome(title: "MIs Rutas"),
          SizedBox(
            height: defaultMinPadding,
            width: double.infinity,
          ),
          Image(
              height: 100,
              width: 550,
              image: AssetImage("assets/images/ruta_imagen.png")),
          Container(
            height: _constrains.maxHeight*0.2,
            child: getWidgetListRoute(context),
          )
        ],
     
    );
  }

  Widget getWidgetListRoute(BuildContext context) => BlocConsumer<RoutesBloc, RoutesState>(
    bloc: context.read<RoutesBloc>()..add(RoutesEvent.callListRoutes("DIAZPJOS", "1", "100")),
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.when(
              initial: () => Container(child: Text("inicial"),),
              showProgress: () => Center(child: CircularProgressIndicator()),
              data: (routes) => routes.isEmpty
                  ? Center(child: Text("No data"))
                  : ListView.builder(
                      itemCount: routes.length,
                      itemBuilder: (BuildContext ctxt, int index) => InkWell(
            onTap: () {
              print("click");
            },
            child: Padding(
              padding: const EdgeInsets.all(defaultMaxPadding),
              child: Container(
                // color: Colors.red,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
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
          ), ),
              failure: () =>
                  Center(child: Center(child: Text("NO HAY CONEXIÓN"))));
        },
      );
}
