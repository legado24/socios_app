import 'package:flutter/material.dart';
import 'package:socios_app/models/response_model.dart';
import 'package:socios_app/pages/customer/customer_info/customer_info.dart';
import 'package:socios_app/utils/dimens.dart';

class ItemMenuSheet extends StatelessWidget {
  const ItemMenuSheet({Key? key, this.imageName, this.title, this.pageCall,this.codCliente})
      : super(key: key);
  final String? imageName;
  final String? title;
  final String? pageCall;
  final String? codCliente;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        contentPadding: EdgeInsets.only(
            left: defaultMaxPadding, right: 0.0, top: 2, bottom: 0),
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        minLeadingWidth: 5,
        leading: Image(
            height: 20,
            width: 20,
            image: AssetImage(
                "assets/images/${imageName}")), //new Icon(Icons.music_note),
        title: new Text(
          "${title}",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontFamily: "Poppins"),
        ),
        onTap: () => {
          Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/${pageCall}',arguments:new CustomerParameterPageScreen(codCliente!))
            });
  }



   
}
