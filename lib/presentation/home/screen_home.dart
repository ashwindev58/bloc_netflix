import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../core/constants.dart';
import '../main_page/widgets/main_tittle_card.dart';
import 'widgets/background_card.dart';
import 'widgets/number_tittle_card.dart';

ValueNotifier<bool> scrollValueNotifier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollValueNotifier,
      builder: (context, value, child) {
       
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection scrollDirection = notification.direction;
            if (scrollDirection == ScrollDirection.reverse) {
              scrollValueNotifier.value = false;
            } else if (scrollDirection == ScrollDirection.forward) {
              scrollValueNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  MainTittleCard(tittle: "Released in the past year"),
                  MainTittleCard(tittle: "Trending Now"),
                  NumberTittleCard(),
                  MainTittleCard(tittle: "Tense Drama"),
                  MainTittleCard(tittle: "South indin cinemas"),
                ],
              ),
              Visibility(
                visible: scrollValueNotifier.value,
                child: AnimatedContainer(duration: const Duration(seconds: 30),
                  color: Colors.black.withOpacity(0.3),
                  width: double.infinity,
                 height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          kWidth,
                          Image.network(
                            NetflixLogo,
                            height: 60,
                            width: 60,
                          ),
                          const Spacer(),
                          const Icon(Icons.cast, color: Colors.white, size: 30),
                          kWidth,
                          Container(
                            color: Colors.blue,
                            height: 25,
                            width: 27,
                          ),
                          kWidth
                        ],
                      ),kHeight,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Text("Tv Shows",style: hometextStyle,),
                        Text("Movies ",style: hometextStyle,),
                        Text("Categories ",style: hometextStyle,),

                      ],)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
