
import 'package:flutter/material.dart';

import '../../../core/Colors/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/custom_icon_bottom_label_button.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FEB",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey),
                ),
                Text("11",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 VideoWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Tall Girl 2",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            wordSpacing: -10,
                            fontFamily: "Long Cang",
                          ),
                        ),
                        Text(
                          "Coming on Friday",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: kColorGrey),
                        )
                      ],
                    ),
                    kWidth,
                    kWidth,
                    kWidth,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconWithBottomLabelButtonWidget(
                            tittle: "Remind  Me",
                            icon: Icons.alarm,
                            iconSize: 25,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                wordSpacing: -5,
                                color: kColorGrey)),
                        CustomIconWithBottomLabelButtonWidget(
                            tittle: "Info",
                            icon: Icons.info,
                            iconSize: 25,
                            textStyle: TextStyle(
                                wordSpacing: -5,
                                fontWeight: FontWeight.w900,
                                color: kColorGrey)),
                      ],
                    )
                  ],
                ),
                kHeight,
                Text(
                  "Tall Girl 2",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    tallGirlDes,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: kColorGrey,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
