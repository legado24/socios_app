
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/customer/customer_info/bloc/customer_info_bloc.dart';
import 'package:socios_app/pages/customer/customer_info/widgets/item_direccion.dart';
import 'package:socios_app/pages/home/widgets/title_home.dart';
import 'package:socios_app/utils/dimens.dart';
import 'package:socios_app/widgets/appbar_socios.dart';

class DatosCustomerPage extends StatelessWidget {
  const DatosCustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final args = ModalRoute.of(context)!.settings.arguments as CustomerParameterPageScreen;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),color: Colors.black,),
      elevation: 2,
      backgroundColor: Colors.white,
      title: Text(
        'Datos del cliente',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Poppins"),
      ),
      ),
      body: LayoutBuilder(builder: (_,constraint){

        return Padding(
        padding: const EdgeInsets.all(defaultMaxPadding),
        child: BlocConsumer<CustomerInfoBloc, CustomerInfoState>(
           bloc: BlocProvider.of<CustomerInfoBloc>(context)..add(CustomerInfoEvent.callInfoCustomer("DIAZPJOS", args.codCliente)),
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return   state.when(initial:()=> Container(), showProgress:()=> Center(child: CircularProgressIndicator()), data: (customerInfo)=>
Column(
              children: [
                Container(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(children: [
                          Image(
                              height: 70,
                              width: 70,
                              image: AssetImage(
                                  "assets/images/icon_cliente_lg.png")),
                          Positioned(
                              right: 0,
                              bottom: 5,
                              child: CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.greenAccent)),
                        ]),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            "${customerInfo!.customer.getDescription}",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        // height: 100.0,
                        padding: EdgeInsets.all(defaultMaxPadding),

                        margin: const EdgeInsets.all(
                            defaultMinPadding), //Same as `blurRadius` i guess
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                    height: 20,
                                    width: 20,
                                    image: AssetImage(
                                        "assets/images/id_card.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${customerInfo.customer.getDni??'-'}",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins")),
                                Expanded(child: SizedBox()),
                                Image(
                                    height: 20,
                                    width: 20,
                                    image: AssetImage(
                                        "assets/images/contrato.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${customerInfo.customer.getRuc??'-'}",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins")),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image(
                                    height: 20,
                                    width: 20,
                                    image: AssetImage(
                                        "assets/images/smartphones.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${customerInfo.customer.getCellPhone??'-'}",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins")),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image(
                                    height: 20,
                                    width: 20,
                                    image:
                                        AssetImage("assets/images/email.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${customerInfo.customer.getEmail??'-'}",
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image(
                                    height: 20,
                                    width: 20,
                                    image: AssetImage(
                                        "assets/images/point_of_sale.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: Text(
                                        "${customerInfo.customer.getAddress}",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins"))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image(
                        height: 20,
                        width: 20,
                        image: AssetImage("assets/images/pin.png")),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Locales",
                      style: TextStyle(
                          fontFamily: "Poppins", fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
               Container(
                 height: constraint.maxHeight*0.4,
                 child: ListView.builder(
                   itemCount: customerInfo.addresses!.length,
                   itemBuilder: (context,index){
                    return ItemDireccion();
                 }),
               )
               
                ],
            ), failure:()=>   Center(child: Center(child: Text("NO HAY CONEXIÓN"))));
          },
        ),
      );
    
      }));
  }
}