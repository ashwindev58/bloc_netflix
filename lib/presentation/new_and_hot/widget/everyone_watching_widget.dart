
import 'package:flutter/material.dart';

import '../../../core/Colors/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/custom_icon_bottom_label_button.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          "Friends",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        kHeight,
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            tallGirlDes,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: kColorGrey,
            ),
          ),
        ),
        kHeight,
        VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconWithBottomLabelButtonWidget(
                tittle: "Share", icon: Icons.share),
            CustomIconWithBottomLabelButtonWidget(
                tittle: "My List", icon: Icons.add),
            CustomIconWithBottomLabelButtonWidget(
                tittle: "Play", icon: Icons.play_arrow),
          ],
        ),kHeight
      ],
    );
  }
}
