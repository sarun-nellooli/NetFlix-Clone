import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

const imageLink =
    'https://image.tmdb.org/t/p/w500/kk28Lk8oQBGjoHRGUCN2vxKb4O2.jpg';

class ScreenSearchResult extends StatelessWidget {
  const ScreenSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Movies & TV",
          style: TextStyle(
              color: kwhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.5,
          children: List.generate(20, (index) => const MainCard()),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(imageLink),
      ),
      borderRadius: BorderRadius.circular(4),
    ));
  }
}
