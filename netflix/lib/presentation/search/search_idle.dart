import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class ScreenIdleWidget extends StatelessWidget {
  const ScreenIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Searches",
          style: TextStyle(
              color: kwhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchTile(),
              separatorBuilder: (context, index) => kdivider,
              itemCount: 20),
        )
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  const TopSearchTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: size * .15,
          width: size * .35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://image.tmdb.org/t/p/w533_and_h300_bestv2/qK7Ssnrfvrt65F66A1thvehfQg2.jpg',
                  ))),
        ),
        SizedBox(width: 10),
        Expanded(
            child: Text(
          'Super Delux',
          style: TextStyle(
            color: kwhiteColor,
            fontWeight: FontWeight.bold,
          ),
        )),
        Icon(
          Icons.play_circle_outline_sharp,
          color: kwhiteColor,
          size: 40,
        ),
      ],
    );
  }
}
