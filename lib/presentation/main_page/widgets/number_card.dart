import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import '../../downloads/widgets/screen_downloads.dart';

class NumberCardWidget extends StatelessWidget {
  final int index;

  const NumberCardWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              width: 50,
            ),
            Container(
              height: 250,
              width: 150,
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(imageList[0]),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Positioned(
          left: 15,
          bottom: -2,
          child: StrokeText(
            text: "${index + 1}",
            textStyle: const TextStyle(
                fontSize: 120,
                color: Colors.black,
                fontWeight: FontWeight.w900),
            strokeColor: Colors.white,
            strokeWidth: 7,
          ),
        ),
      ],
    );
  }
}
