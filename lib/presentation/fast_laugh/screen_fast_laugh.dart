import 'package:flutter/material.dart';

import 'widgets/video_list_item.dart';

class ScreenFastLaughPage extends StatelessWidget {
  const ScreenFastLaughPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(scrollDirection: Axis.vertical,
        children: List.generate(50, (index) =>  VideoListItem(index: index,)),
      )),
    );
  }
}
