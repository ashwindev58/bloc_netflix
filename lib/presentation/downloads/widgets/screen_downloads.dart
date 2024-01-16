import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_netflix_bloc/application/downloads/downloads_bloc.dart';
import 'package:main_netflix_bloc/core/Colors/colors.dart';
import 'package:main_netflix_bloc/core/constants.dart';

import '../../widgets/app_bar_widgets.dart';

final List imageList = [
  "https://www.themoviedb.org/t/p/w440_and_h660_face/ui4DrH1cKk2vkHshcUcGt2lKxCm.jpg",
  "https://www.themoviedb.org/t/p/w440_and_h660_face/rWg4Jk7NwVEz2BtU1aKKDoDJPeB.jpg",
//  "https://www.themoviedb.org/movie/930564"
  "https://www.themoviedb.org/t/p/w440_and_h660_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg"
];

class ScreenDownloadsPage extends StatelessWidget {
  const ScreenDownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(DownloadsEvent.getDownloadsImage());
    });
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidgets(
            tittle: "Downloads",
          )),
      body: ListView(children: [
        _SmartWidget(),
        const Section1(),
        const Section3(),
      ]),
    );
  }
}

class _SmartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kWidth,
        Icon(
          Icons.settings,
          color: kColorWhite,
        ),
        kWidth,
        Text("Settings")
      ],
    );
  }
}

class DownloadsimageWidget extends StatelessWidget {
  const DownloadsimageWidget({
    super.key,
    required this.imageUrl,
    required this.angle,
    this.margin,
  });

  final String imageUrl;
  final double angle;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width * 0.55,
        width: size.width * 0.4,
        // color: kColorBlack,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: NetworkImage(imageUrl))),
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: kColorWhite),
          textAlign: TextAlign.center,
        ),
        const Text(
          "we'll download a personalised selection of \nmovies and shows for you,so there's \nalways something to watch on your \ndevice.",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return  SizedBox(
                    height: size.width,
                    width: size.width,
                    child: state.isLoading
                ? const Center(child:  CircularProgressIndicator())
                :Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        radius: size.width * 0.36,
                      ),
                      DownloadsimageWidget(
                          imageUrl:
                              "$imageAppendUrl${state.downloadsList?[0].posterPath}",
                          angle: 10,
                          margin: const EdgeInsets.only(left: 100)),
                      DownloadsimageWidget(
                          imageUrl:
                              "$imageAppendUrl${state.downloadsList?[1].posterPath}",
                          angle: -10,
                          margin: const EdgeInsets.only(right: 100)),
                      DownloadsimageWidget(
                          imageUrl:
                              "$imageAppendUrl${state.downloadsList?[2].posterPath}",
                          angle: 0),
                    ]),
                  );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kButtonColorBlue,
            child: const Text("Set up",
                style: TextStyle(
                    color: kColorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          color: kButtonColorWhite,
          child: const Text("See what you can download",
              style: TextStyle(
                  color: kColorBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
