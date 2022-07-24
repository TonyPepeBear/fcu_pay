import 'package:fengchiabi/ui/page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFD79CA2, themeColor),
      ),
      home: const HomePage(),
    );
  }
}

Map<int, Color> themeColor = {
  50: const Color.fromRGBO(215, 156, 162, .1),
  100: const Color.fromRGBO(215, 156, 162, .2),
  200: const Color.fromRGBO(215, 156, 162, .3),
  300: const Color.fromRGBO(215, 156, 162, .4),
  400: const Color.fromRGBO(215, 156, 162, .5),
  500: const Color.fromRGBO(215, 156, 162, .6),
  600: const Color.fromRGBO(215, 156, 162, .7),
  700: const Color.fromRGBO(215, 156, 162, .8),
  800: const Color.fromRGBO(215, 156, 162, .9),
  900: const Color.fromRGBO(215, 156, 162, 1),
};
