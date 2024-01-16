import 'package:flutter/material.dart';

class WidgetTittle extends StatelessWidget {
  const WidgetTittle({
    super.key, required this.tittle,
  });
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return  Text(
      tittle,
      style:  const TextStyle(
          fontSize: 22, fontWeight: FontWeight.w900, color: Colors.white),
    );
  }
}