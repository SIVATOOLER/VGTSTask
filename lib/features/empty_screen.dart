import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
   EmptyScreen(this.index);
  int index;

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("No Page Found on Index ${index}")
    ],);
  }
}
