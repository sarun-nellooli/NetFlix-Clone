import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.appbarText,
  }) : super(key: key);
  final String appbarText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(appbarText),
      actions: [
        Icon(
          Icons.cast,
          color: Colors.white,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        ClipRRect(
          borderRadius:
              BorderRadius.all(Radius.circular(10.0)), //add border radius here
          child: Image.network(
            'https://images.newindianexpress.com/uploads/user/imagelibrary/2021/9/23/w1200X800/Mammootty_YouTube.jpg',
            width: 20,
            height: 20,
          ), //add image location here
        ),
      ],
    );
  }
}
