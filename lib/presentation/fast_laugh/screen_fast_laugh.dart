import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_netflix_bloc/application/fast_laugh/fastlaugh_bloc.dart';

import 'widgets/video_list_item.dart';

class ScreenFastLaughPage extends StatelessWidget {
  const ScreenFastLaughPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<FastlaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(child:
          BlocBuilder<FastlaughBloc, FastlaughState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        } else if (state.isError) {
          return const Center(
            child: Text("Erorr While Geting Data"),
          );
        } else {
          if (state.videoList.isEmpty) {
            return const Center(
              child: Text("Video List Empty"),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(state.videoList.length, (index) {
                return VideoListItemInheritedWidget(
                    widget: VideoListItem(
                      index: index,
                      key: Key(
                        index.toString(),
                      ),
                    ),
                    movieData: state.videoList[index]);
              }),
            );
          }
        }
      })),
    );
  }
}
