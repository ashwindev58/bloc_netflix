import 'package:flutter/material.dart';

import '../../core/constants.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({super.key, required this.tittle});
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(tittle,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),
        const Spacer(),
        const Icon(Icons.cast,color: Colors.white,size: 30),
        kWidth,
        Container(color: Colors.blue,height: 25,width: 27,),
        kWidth
      ],
    );
  }
}
