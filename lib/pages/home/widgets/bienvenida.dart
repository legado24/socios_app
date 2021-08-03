import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socios_app/bloc/bloc/customer_new_bloc.dart';
import 'package:socios_app/bloc/bloc/home_new_bloc.dart';
import 'package:socios_app/bloc/home_bloc.dart';
import 'package:socios_app/bloc/inicio_bloc.dart';
import 'package:socios_app/models/response_model.dart';
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
   //late InicioBloc _inicioBloc=InicioBloc();//ProviderInicio.of(context).inicioBloc;
  
  //late HomeNewBloc _homeNewBloc=HomeNewBloc();
  @override
  void initState() {
    context.read<CustomerNewBloc>()..add(CustomerNewEvent.reInit()); 
    context.read<HomeNewBloc>()//..add(HomeNewEvent.reInit())
    ..add(HomeNewEvent.callInfoDiaria("DIAZPJOS"));
    super.initState();
     
     //_inicioBloc.addEvent.add(CallInfoDiaria());
 //context.read<HomeNewBloc>().add(HomeNewEvent.callInfoDiaria());

    //_homeBloc = 
   //context.read<HomeBloc>().add(HomeEvent.showProgress("DIAZPJOS"));
   // _homeBloc = BlocProvider.of<HomeBloc>(context);///..add(HomeEvent.fetched("DIAZPJOS"));
  }
  @override
  void dispose() {
   
   super.dispose();
   // _homeBloc.close();
 
    
   
  }

@override
  Widget build(BuildContext context) {
    return  BlocBuilder<HomeNewBloc, HomeNewState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial:()=> getProgress(""),
            showProgress: ()=> getProgress("cargando"), 
            data: (info)=> getWidgetBienvenida(info, widget.constraints.maxHeight),
            failure: ()=> Container(child: Text("Sin conexión")),
            orElse: ()=>Container(child: Text("Sin estado"))
            );});
             
  }
  
  /* @override
  Widget build(BuildContext context) {
    return BlocListener<HomeNewBloc, HomeNewState>(      
      listener: (_, state) {
        print("state changed");
      },
      child: BlocBuilder<HomeNewBloc, HomeNewState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial:()=> getProgress(""),
            showProgress: ()=> getProgress("cargando"), 
            data: (info)=> getWidgetBienvenida(info, widget.size),
            failure: ()=> Container(child: Text("Sin conexión")),
            orElse: ()=>Container(child: Text("Sin estado"))
            );}));
             
  } */

 /*  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
    //  bloc:context.read<HomeBloc>() ..add(HomeEvent.clean()),
      listener: (_, state) {
        print("state changed");
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.maybeWhen( 
            initial:()=> Container(),
             
             isLoading:() => Center(
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: widget.size.height * 0.36,
                      child: Center(child: CircularProgressIndicator()))), 
                      isLoaded:(state)=> getWidgetBienvenida(state), 
                      failure:()=> Center(
                  child: Container(
                      height: widget.size.height * 0.36,
                      child: Center(child: Text("NO HAY CONEXIÓN")))),
                      orElse: ()=>Text("Nigun estado"));
                     
        },
      ),
    );
  }
 */
/*   @override
  Widget build(BuildContext context) {
    return ProviderInicio(
        child:   StreamBuilder<InfoVentaDiariaResponse>(
        stream: _inicioBloc.infoDiaria,
        builder: (context, snapshotInfo) {
          // return BodyHome(snapshotInfo.data);
          return StreamBuilder<bool>(
              stream: _inicioBloc.showLOading,
              builder: (context, snapshotLoading) {
                return getWidget(snapshotInfo, snapshotLoading);
              });
        },
      ),
    );
  } */

  /*  Widget getWidget(snapShotInfo, snapShotLoading) {
    if (snapShotLoading.data == true) {
      return Center(child: CircularProgressIndicator());
    } else if (snapShotLoading.data == false) {
      return getWidgetBienvenida(snapShotInfo.data,widget.size);
    }
    return Center(child: CircularProgressIndicator());
  } */
//}

Widget getProgress(String text){

  return Container(
                      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: widget.constraints.maxHeight * 0.36,
                      child: Center(child: CircularProgressIndicator(semanticsLabel: text,)));
}
  Widget getWidgetBienvenida(InfoVentaDiariaResponse? state,size) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: size * 0.36,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hola ",
              style: TextStyle(
                  color: Colors.grey[850],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "${state?.nombres}",
              style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Container(
                // decoration:
                //   BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Row(children: [
                  Flexible(
                    child: Container(
                      //decoration: BoxDecoration(
                      //  border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        "Soy tu socio y estoy para ayudarte",
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.blueAccent)),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '😁', // emoji characters
                            style:
                                TextStyle(fontFamily: 'EmojiOne', fontSize: 15,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "🎉Vamos  ${state?.diasAvance}/${state?.diasTotal} días de ventas.",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "🎉Tu necesidad diaria de ventas es S/.${state?.necesidadDiaria}",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "🎉Vamos vendiendo  S/.${state?.avanceVentas}",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }}

