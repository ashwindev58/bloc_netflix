import 'Package:flutter/material.dart';
import '../../downloads/widgets/screen_downloads.dart';
import '../../fast_laugh/screen_fast_laugh.dart';
import '../../home/screen_home.dart';
import '../../main_page/widgets/bottom_nav.dart';
import '../../new_and_hot/screen_new_and_hot.dart';
import '../../search/screen_search.dart';

import '../../home/screen_home.dart';

final pages = [
  const ScreenHomePage(),
  const ScreenNewAndHotPage(),
  const ScreenFastLaughPage(),
  const ScreenSearchPage(),
  const ScreenDownloadsPage()
];

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavWidgets(),
    );
  }
}
