import 'package:flutter/material.dart';
import 'package:vgts_task/config/app_const.dart';
import 'package:vgts_task/features/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConst.appName,
        home: HomeScreen());
  }
}
