import 'package:flutter/material.dart';
import 'package:socios_app/utils/consts.dart';
import 'package:socios_app/utils/dimens.dart';

class ItemInfoVentas extends StatelessWidget {
  const ItemInfoVentas({Key? key,this.texto,this.iconText}) : super(key: key);
  final String? texto;
  final String? iconText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: defaultMinPadding),
      child: Row(
       // crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Text("${iconText}"),
           SizedBox(width: 4,),
           Expanded(
             child: Text(
                        "${texto}",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
           ),
        
        ],
      ),
    );
  }
}