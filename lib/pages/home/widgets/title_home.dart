import 'package:flutter/material.dart';
import 'package:socios_app/utils/consts.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
