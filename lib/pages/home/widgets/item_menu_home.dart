import 'package:flutter/material.dart';

class ItemMenuHome extends StatelessWidget {
  const ItemMenuHome(
      {Key? key,
      required this.title,
      required this.imagen,
      required this.color})
      : super(key: key);
  final String title;
  final String imagen;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //alignment: Alignment.center,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: color[700], shape: BoxShape.circle),
          // height: MediaQuery.of(context).size.height * 0.3,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Image(
                //  alignment: Alignment.topCenter,
                image: AssetImage(imagen),
                color: Colors.grey[200],
                height: 60,
                //   fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Text(
          title,
          style: TextStyle(color: color[700], fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
