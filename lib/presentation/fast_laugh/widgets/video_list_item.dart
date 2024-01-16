import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../downloads/widgets/screen_downloads.dart';
import '../../widgets/custom_icon_bottom_label_button.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_mute)),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(imageList[0]),
                            radius: 30)),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.emoji_emotions,
                      tittle: "LOL",
                    ),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.add,
                      tittle: "My List",
                    ),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.share,
                      tittle: "Share",
                    ),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.play_arrow,
                      tittle: "play",
                    ),
                    kHeight,
                    kHeight,
                  ],
                )
              ],
            ))
      ],
    );
  }
}
