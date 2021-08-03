 
import 'package:flutter/material.dart';
import 'package:socios_app/bloc/bloc/home_new_bloc.dart';
 import 'package:socios_app/bloc/inicio_bloc.dart';
import 'package:socios_app/pages/home/widgets/body.dart';
import 'package:socios_app/widgets/appbar_socios.dart';

class HomePage extends StatefulWidget  {
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
   return  Scaffold(
      appBar: SociosAppBar(title: "Inicio",) ,
      body: LayoutBuilder(builder: (_,constraint){

        return SingleChildScrollView(child: BodyHome(constraint));
      }));
  }

  /* @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; */
}