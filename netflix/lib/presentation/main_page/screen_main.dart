import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fastlaugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/hot_and_new/screen_hot_and_new.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({Key? key}) : super(key: key);
  final _pages = [
    ScreenHome(),
    ScreenHotAndNew(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: ValueListenableBuilder(
              valueListenable: bottomNavIndex,
              builder: (context, int index, _) {
                return _pages[index];
              }),
          bottomNavigationBar: const BottomNav(),
        ),
      ),
    );
  }
}
