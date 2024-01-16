import 'package:flutter/material.dart';

import '../downloads/widgets/screen_downloads.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(imageList[1]), fit: BoxFit.cover)),
    );
  }
}
