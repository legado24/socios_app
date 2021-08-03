import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/home/bloc/daily_info_bloc.dart';
import 'package:socios_app/utils/consts.dart';

class BienvenidaHome extends StatefulWidget {
  BienvenidaHome({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  _BienvenidaHomeState createState() => _BienvenidaHomeState();
}

class _BienvenidaHomeState extends State<BienvenidaHome> {
  @override
  void initState() {
    // context.read<CustomerNewBloc>()..add(CustomerNewEvent.reInit());
   /*  context.read<DailyInfoBloc>() //..add(HomeNewEvent.reInit())
      ..add(DailyInfoEvent.callInfoDiaria("DIAZPJOS")); */
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyInfoBloc, DailyInfoState>(
      bloc:  context.read<DailyInfoBloc>() ..add(DailyInfoEvent.callInfoDiaria("DIAZPJOS")),
        builder: (context, state) {
      return state.maybeWhen(
          initial: () => getProgress(""),
          showProgress: () => getProgress("cargando"),
          data: (info) => getWidgetBienvenida(info),
          failure: () => Container(child: Text("Sin conexión")),
          orElse: () => Container(child: Text("Sin estado")));
    });
  }

  Widget getProgress(String text) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: widget.constraints.maxHeight * 0.36,
        child: Center(
            child: CircularProgressIndicator(
          semanticsLabel: text,
        )));
  }

  Widget getWidgetBienvenida(InfoVentaDiariaResponse? state) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: widget.constraints.maxHeight * 0.36,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hola ",
              style: TextStyle(
                  color: Colors.grey[850],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"),
            ),
            Text(
              "${state?.nombres}",
              style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"),
            ),
           
            Flexible(
              child: Container(
                child: Row(children: [
                  Flexible(
                    child: Container(
                      child: Text(
                        "Soy tu socio y estoy para ayudarte",
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '😁', // emoji characters
                            style: TextStyle(
                              fontFamily: 'EmojiOne',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
           
            Text(
              "🎉Vamos  ${state?.diasAvance}/${state?.diasTotal} días de ventas.",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            
            Text(
              "🎉Tu necesidad diaria de ventas es S/.${state?.necesidadDiaria}",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
             
            Text(
              "🎉Vamos vendiendo  S/.${state?.avanceVentas}",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
          
          ],
        ));
  }
}
