import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.appbarText}) : super(key: key);
  final String appbarText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appbarText,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.cast,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              color: Colors.blue,
            )
          ],
        )
      ],
    );
  }
}
