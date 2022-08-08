import 'package:expense_tracker/page/home_view.dart';
import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: appWhite,
        canvasColor: Colors.transparent,
      ),
      home: HomeView(),
    );
  }
}
