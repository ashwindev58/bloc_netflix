
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../main_page/widgets/number_card.dart';
import '../../search/widget/tittle.dart';

class NumberTittleCard extends StatelessWidget {
  const NumberTittleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
         const WidgetTittle(tittle: "Top 10 Shows in India"),
        kHeight,
        LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) =>  NumberCardWidget(index: index),
              ),
            ))
              ],
            );
  }
}
