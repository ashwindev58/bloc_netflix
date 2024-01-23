import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_netflix_bloc/application/downloads/downloads_bloc.dart';

import 'application/fast_laugh/fastlaugh_bloc.dart';
import 'application/search/search_bloc.dart';
import 'core/Colors/colors.dart';
import 'domain/search/search_service.dart';
import 'infrastructure/downloads/downloads_repository.dart';
import 'infrastructure/search/search_implements.dart';
import 'presentation/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

//some global objectss of a helpier class
DownloadsRepository globaDownloadRepo = DownloadsRepository();
SearchService globalsearchServiceImplements = SearchImpl();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DownloadsBloc>(
          create: (BuildContext context) => DownloadsBloc(globaDownloadRepo),
        ),
        BlocProvider<SearchBloc>(
            create: (context) =>
                SearchBloc(globaDownloadRepo, globalsearchServiceImplements)),
        BlocProvider<FastlaughBloc>(
            create: (context) =>
                FastlaughBloc(globaDownloadRepo)),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: backgroundColor,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(background: Colors.black),
            appBarTheme: const AppBarTheme(
              foregroundColor: kColorWhite,
              backgroundColor: Colors.transparent,
            ),
            textTheme: const TextTheme(
                bodySmall: TextStyle(color: Colors.white),
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white))),
        home: const ScreenMainPage(),
      ),
    );
  }
}




// https://www.youtube.com/watch?v=B_3pZYhjjR4&list=PLY-ecO2csVHcUlBVvIMAa3dbja12TFJiN&index=53 completed next watch it