import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/home/bloc/daily_info_bloc.dart';
import 'package:socios_app/pages/home/widgets/item_info_ventas.dart';
import 'package:socios_app/utils/consts.dart';
import 'package:socios_app/utils/dimens.dart';

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
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyInfoBloc, DailyInfoState>(
        bloc: context.read<DailyInfoBloc>()
          ..add(DailyInfoEvent.callInfoDiaria("DIAZPJOS")),
        builder: (context, state) {
          return state.maybeWhen(
              initial: () => getProgress(""),
              showProgress: () => getProgress("cargando"),
              data: (info) => getWidgetBienvenida(info),
              failure: () =>
                  Container(child: Center(child: Text("Sin conexión"))),
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
       
       // margin: EdgeInsets.symmetric(vertical: defaultMaxPadding),
       padding: EdgeInsets.only(left: defaultMaxPadding,right: defaultMaxPadding,top: defaultMaxPadding),
        height: widget.constraints.maxHeight * 0.42,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hola",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: fontFamily),
            ),
            Text(
              "${state?.nombres}",
              style: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: fontFamily),
            ),
            Container(
              //padding: EdgeInsets.symmetric(vertical: 2),
              child: Row(children: [
                Flexible(
                  child: Container(
                    child: Text(
                      "Soy tu socio y estoy para ayudarte",
                      style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: fontFamily),
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
            Container(
               child: Column(
                children: [
                  ItemInfoVentas(
                      iconText: "🎉",
                      texto:
                          "Vamos  ${state?.diasAvance}/${state?.diasTotal} días de ventas."),
                  ItemInfoVentas(
                      iconText: "🎉",
                      texto:
                          "Tu necesidad diaria de ventas es S/.${state?.necesidadDiaria}"),
                  ItemInfoVentas(
                      iconText: "🎉",
                      texto: "Vamos vendiendo  S/.${state?.avanceVentas}"),
                  ItemInfoVentas(
                      iconText: "🎉",
                      texto: "Vamos vendiendo  S/.${state?.avanceVentas}"),
                  ItemInfoVentas(
                      iconText: "🎉",
                      texto: "Vamos vendiendo  S/.${state?.avanceVentas}"),
                ],
              ),
            )
          ],
        ));
  }
}
