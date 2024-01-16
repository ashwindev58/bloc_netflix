import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_netflix_bloc/application/search/search_bloc.dart';

import '../../../core/constants.dart';
import '../../downloads/widgets/screen_downloads.dart';
import 'tittle.dart';

class WidgetSearchResult extends StatelessWidget {
  const WidgetSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        kHeight,
        kHeight,
        const WidgetTittle(tittle: "Movies & TV "),
        kHeight,
        Expanded(
          child:
              BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            return GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  for (int i = 0; i < state.searchResultList.length; i++)
                    Center(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(state.searchResultList[i].posterImgUrl),
                              fit: BoxFit.cover)),
                    ))
                ]);
          }),
        )
      ],
    );
  }
}

var c = Container(
  height: 15,
  width: 15,
  decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(imageList[0]), fit: BoxFit.cover)),
);
