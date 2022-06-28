import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenHotAndNew extends StatelessWidget {
  const ScreenHotAndNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(appbarText: "Hot and New")),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
