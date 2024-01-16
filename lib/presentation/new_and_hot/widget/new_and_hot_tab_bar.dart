


import 'package:flutter/material.dart';

import '../../../core/Colors/colors.dart';

class NewnHotTabBarWidget extends StatelessWidget {
  const NewnHotTabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
        labelColor: kColorBlack,
        unselectedLabelColor: kColorWhite,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        isScrollable: true,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(60), color: kColorWhite),
        tabs: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: const Text(
              "🍿 Coming Soon",
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: const Text(
              "👀 Everones Watching",
            ),
          ),
        ]);
  }
}