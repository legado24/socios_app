import 'package:flutter/material.dart';
import 'package:socios_app/widgets/appbar_socios.dart';

class ActualizarDatosPage extends StatelessWidget {
  const ActualizarDatosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SociosAppBar(title: "Actualizar Datos Cliente",),
      body: Container(child: Center(child: Text("actualizar datos cliente")),),
    );
  }
}