import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenHotAndNew extends StatelessWidget {
  const ScreenHotAndNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("Hot & New"),
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
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), //add border radius here
                child: Image.network(
                  'https://images.newindianexpress.com/uploads/user/imagelibrary/2021/9/23/w1200X800/Mammootty_YouTube.jpg',
                  width: 30,
                  height: 30,
                ), //add image location here
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              indicator: BoxDecoration(
                color: kwhiteColor,
                borderRadius: BorderRadius.circular(40),
              ),
              tabs: [
                Tab(
                  text: "Coming Soon",
                  iconMargin: EdgeInsets.all(0),
                ),
                Tab(
                  text: "Everyone's Watching",
                )
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text("Hot and New")),
          Center(child: Text('Hot and New'))
        ]),
      ),
    );
  }
}
