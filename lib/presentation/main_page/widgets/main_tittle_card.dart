
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../search/widget/tittle.dart';
import '../../widgets/main_card.dart';

class MainTittleCard extends StatelessWidget {
  final String tittle;
  const MainTittleCard({
    super.key, required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
     WidgetTittle(tittle: tittle),
    kHeight,
    LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            10,
            (index) => const MainCard(),
          ),
        ))
          ],
        );
  }
}
