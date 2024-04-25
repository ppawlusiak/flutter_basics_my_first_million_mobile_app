import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color containerColor = MyColors.melon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('onTap called!!');
        setState(() {
          containerColor = containerColor == MyColors.melon
              ? MyColors.ufoGreen
              : MyColors.melon;
        });
      },
      child: Container(
        color: containerColor,
      ),
    );
  }
}
