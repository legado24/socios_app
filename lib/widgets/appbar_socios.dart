import 'package:flutter/material.dart';
import 'package:socios_app/utils/consts.dart';

class SociosAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SociosAppBar({Key? key, required this.title, this.choiceAction})
      : super(key: key);

  final String? title;
  final Function? choiceAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 2,
      backgroundColor: Colors.white,
      title: Text(
        '$title',
        style: TextStyle(
          fontSize:sizeTitle,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: fontFamily),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: <Widget>[
        PopupMenuButton<String>(
          //onSelected: choiceAction,
          itemBuilder: (BuildContext context) {
            return choices.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
