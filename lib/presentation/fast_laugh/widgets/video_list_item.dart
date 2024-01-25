import 'package:flutter/material.dart';
import 'package:main_netflix_bloc/domain/downloads/models/downloads.dart';
import 'package:video_player/video_player.dart';

import '../../../core/constants.dart';
import '../../widgets/custom_icon_bottom_label_button.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final DownloadModel movieData;

  const VideoListItemInheritedWidget(
      {super.key, required this.widget, required this.movieData})
      : super(child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    return Stack(
      children: [
        FastlaughVideoPlayer(
            videoUrl: dummyVideoUrls[index % dummyVideoUrls.length],
            onChanged: (bool) {}),

        // Container(
        //   color: Colors.accents[index % Colors.accents.length],
        // ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_mute)),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                            backgroundImage: posterPath == null
                                ? null
                                : NetworkImage('$imageAppendUrl$posterPath'),
                            radius: 30)),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.emoji_emotions,
                      tittle: "LOL",
                    ),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.add,
                      tittle: "My List",
                    ),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.share,
                      tittle: "Share",
                    ),
                    const CustomIconWithBottomLabelButtonWidget(
                      icon: Icons.play_arrow,
                      tittle: "play",
                    ),
                    kHeight,
                    kHeight,
                  ],
                )
              ],
            ))
      ],
    );
  }
}

class FastlaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onChanged;
  const FastlaughVideoPlayer(
      {super.key, required this.videoUrl, required this.onChanged});

  @override
  State<FastlaughVideoPlayer> createState() => _FastlaughVideoPlayerState();
}

class _FastlaughVideoPlayerState extends State<FastlaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
    );
  }
}
