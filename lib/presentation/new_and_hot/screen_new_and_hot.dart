import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'widget/coming_soon_widget.dart';
import 'widget/everyone_watching_widget.dart';
import 'widget/new_and_hot_tab_bar.dart';

class ScreenNewAndHotPage extends StatelessWidget {
  const ScreenNewAndHotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hot & New",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          actions: [
            const Icon(Icons.cast, color: Colors.white, size: 30),
            kWidth,
            Container(
              color: Colors.blue,
              height: 25,
              width: 27,
            ),
            kWidth
          ],
          bottom: const PreferredSize(
              preferredSize: Size(double.infinity, 50),
              child: NewnHotTabBarWidget()),
        ),
        body: TabBarView(children: [
          _widegetCommingSoon(),
          _widegetEverypneWatchng(),
        ]),
      ),
    );
  }

  _widegetCommingSoon() {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  _widegetEverypneWatchng() {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => const EveryonesWatchingWidget(),
    );
  }
}
