import 'package:flutter/material.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            color: Colors.accents[index],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: Icon(
                          Icons.volume_mute,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                              'https://image.tmdb.org/t/p/w500/kk28Lk8oQBGjoHRGUCN2vxKb4O2.jpg'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        VideoScreenActionButton(
                            icon: Icons.emoji_emotions, title: 'LOL'),
                        SizedBox(
                          height: 15,
                        ),
                        VideoScreenActionButton(
                            icon: Icons.add, title: 'My List'),
                        SizedBox(
                          height: 15,
                        ),
                        VideoScreenActionButton(
                            icon: Icons.send, title: 'Share'),
                        SizedBox(
                          height: 15,
                        ),
                        VideoScreenActionButton(
                            icon: Icons.play_arrow, title: 'Play'),
                      ],
                    )
                  ]),
            ),
          )
        ],
      )),
    );
  }
}

class VideoScreenActionButton extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoScreenActionButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 25,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
