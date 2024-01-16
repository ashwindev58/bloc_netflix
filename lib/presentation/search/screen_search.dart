import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_netflix_bloc/application/search/search_bloc.dart';

import '../../core/constants.dart';
import 'widget/search_result.dart';
import 'widget/searchidel.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    try {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        BlocProvider.of<SearchBloc>(context).add(SearchEvent.initialize());
      });
    } catch (E) {
      log(" 1111111111111111111111111111111111111111111111111111111111111 searchBloc : $E");
    }

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   //BlocProvider.of<SearchBloc>(context).add(const Initialize());
    //   BlocProvider.context.read<SearchBloc>().add(const Initialize());
    //  // BlocProvider.of(context).add()
    // });

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          CupertinoSearchTextField(
            itemColor: Colors.white,
            style: const TextStyle(color: Colors.white),
            backgroundColor: Colors.grey.withOpacity(0.4),
            onChanged: (value) {
              BlocProvider.of<SearchBloc>(context)
                  .add(SearchEvent.searchMovies(movieQuery: value));
            },
          ),

           Expanded(child: BlocBuilder<SearchBloc,SearchState>(
            builder: (context,state) {
              if(state.searchResultList.isEmpty){
                 return const ScreenIdelePage();
              }else{
                return const WidgetSearchResult();
              }
             
            }
          )),
          // Expanded(child: const WidgetSearchResult()),
        ],
      ),
    );
  }
}
