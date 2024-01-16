import 'package:flutter/material.dart';

import '../../../core/Colors/colors.dart';
import '../../downloads/widgets/screen_downloads.dart';
import '../../widgets/custom_icon_bottom_label_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.8,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                  colors: [Colors.black, Colors.black12],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center),
              boxShadow: [
                BoxShadow(
                  color: kColorBlack,
                  blurRadius: size.height * 0.25,
                )
              ],
              image: DecorationImage(
                  image: NetworkImage(imageList[2]), fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 25,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomIconWithBottomLabelButtonWidget(
                  icon: Icons.add, tittle: "Mylist"),
              _PlayButton(),
              const CustomIconWithBottomLabelButtonWidget(
                  icon: Icons.info, tittle: "info"),
            ],
          ),
        )
      ],
    );
  }
}

Container _PlayButton() {
  return Container(
    color: kColorWhite,
    child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.play_arrow, color: kColorBlack),
        label: const Text(
          "Play",
          style: TextStyle(color: kColorBlack),
        )),
  );
}
