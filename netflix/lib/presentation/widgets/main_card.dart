import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 100,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://image.tmdb.org/t/p/w220_and_h330_face/wOx97MJOxEoR38aoya3lopyrlYC.jpg")),
        ),
      ),
    );
  }
}

class NumberedCard extends StatelessWidget {
  const NumberedCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Container(
            width: 100,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://image.tmdb.org/t/p/w220_and_h330_face/wOx97MJOxEoR38aoya3lopyrlYC.jpg")),
            ),
          ),
        ),
        Positioned(
          left: -5,
          bottom: 0,
          top: 40,
          child: BorderedText(
            strokeColor: Colors.white70,
            strokeWidth: 3.0,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontFamily: 'Roboto Mono',
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
