import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_netflix_bloc/application/search/search_bloc.dart';

import '../../../core/constants.dart';
import 'tittle.dart';

class ScreenIdelePage extends StatelessWidget {
  const ScreenIdelePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        kHeight,
        kHeight,
        const WidgetTittle(tittle: "Top Searches "),
        kHeight,
        Expanded(
          child:
              BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text("error while gettig data"),
              );
            } else if (state.idleList.isEmpty) {
              return const Center(
                child: Text("empty data"),
              );
            }
            return ListView.separated(
              itemCount: state.idleList.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              separatorBuilder: (BuildContext context, int index) => kHeight,
              itemBuilder: (BuildContext context, int index) {
                final movie = state.idleList[index];
                return TopsearchItemTile(
                    tittle: movie.title ?? "no tittle",
                    imageUrl: '$imageAppendUrl${movie.posterPath}');
              },
            );
          }),
        )
      ],
    );
  }
}

class TopsearchItemTile extends StatelessWidget {
  final String tittle;
  final String imageUrl;
  const TopsearchItemTile({
    super.key,
    required this.tittle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
        ),
        Text(
          tittle,
          style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_circle,
              color: Colors.white,
            ))
      ],
    );
  }
}
