import 'package:flutter/material.dart';
import 'package:socios_app/utils/dimens.dart';

class ItemDireccion extends StatelessWidget {
  const ItemDireccion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  ClipRRect(
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
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                                radius: 8, backgroundColor: Colors.greenAccent),
                          ],
                        ),
                        Row(
                          children: [
                            Image(
                                height: 20,
                                width: 20,
                                image: AssetImage(
                                    "assets/images/icon_empresa.png")),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ABARROTES",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins")),
                                Text("DESPENSA PERUANA S.A",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins")),
                              ],
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
                                image:
                                    AssetImage("assets/images/home_house.png")),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                  "HIPOLITO UNANUE #817 BALSARES - POR EL COLEGIO JOSÉ PLAYA",
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins")),
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
                                image: AssetImage("assets/images/route.png")),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "SANTA ROSA",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              
    );
  }
}