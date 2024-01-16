
import 'package:flutter/material.dart';

import '../../core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          comingSoonImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 270,
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_mute)),
          ),
        ),
      ],
    );
  }
}
