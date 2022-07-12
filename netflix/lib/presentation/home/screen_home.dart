import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_card.dart';

ValueNotifier<bool> scrollDetection = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollDetection,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;

                  if (direction == ScrollDirection.reverse) {
                    scrollDetection.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollDetection.value = true;
                  }
                  return true;
                },
                child: SafeArea(
                    child: Stack(
                  children: [
                    ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 500,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://image.tmdb.org/t/p/w300_and_h450_bestv2/lFhxNXEK0UpXXqSbhba83Zhl2uk.jpg')))),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.add,
                                        color: Colors.white70,
                                        size: 20,
                                      ),
                                      Text(
                                        'My List',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  TextButton.icon(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white)),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    label: const Text(
                                      'Play',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.info_outline_rounded,
                                        color: Colors.white70,
                                        size: 20,
                                      ),
                                      Text(
                                        'Info',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Maintitletext(
                                title: 'Released in the Past Year'),
                            LimitedBox(
                              maxHeight: 150,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                    10, (index) => const MainCard()),
                              ),
                            ),
                            const Maintitletext(title: "Trending Now"),
                            LimitedBox(
                              maxHeight: 150,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                    10, (index) => const MainCard()),
                              ),
                            ),
                            const Maintitletext(
                                title: "Top 10 TV shows in India today"),
                            LimitedBox(
                              maxHeight: 150,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(
                                      10,
                                      (index) => NumberedCard(
                                            index: index,
                                          )),
                                ),
                              ),
                            ),
                            const Maintitletext(
                              title: "Tense Drama",
                            ),
                            LimitedBox(
                              maxHeight: 150,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                    10, (index) => const MainCard()),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    scrollDetection.value
                        ? Container(
                            color: Colors.black45,
                            height: 70,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                        width: 60,
                                        'https://cdn.vox-cdn.com/thumbor/Yq1Vd39jCBGpTUKHUhEx5FfxvmM=/39x0:3111x2048/1200x800/filters:focal(39x0:3111x2048)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png'),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      color: Colors.blueGrey,
                                      width: 20,
                                      height: 20,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3.0,
                                      bottom: 3.0,
                                      left: 30,
                                      right: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      _appbarBottomWidget("TV Shows"),
                                      _appbarBottomWidget("Movies"),
                                      _appbarBottomWidget("Categories"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container(),
                  ],
                )),
              );
            }));
  }

  Text _appbarBottomWidget(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 12, color: Colors.white),
    );
  }
}

class Maintitletext extends StatelessWidget {
  const Maintitletext({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 5),
      child: Text(
        title,
        style: const TextStyle(
            color: kwhiteColor, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
