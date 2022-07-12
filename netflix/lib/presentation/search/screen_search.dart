import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/screen_search_result.dart';
import 'package:netflix/presentation/search/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          (CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.4),
            style: TextStyle(color: Colors.white.withOpacity(.7)),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
          )),
          Expanded(child: ScreenIdleWidget())
        ],
      ),
    )));
  }
}
