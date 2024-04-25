import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Color containerColor = MyColors.melon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('onTap called!!');
        containerColor = containerColor == MyColors.melon
            ? MyColors.ufoGreen
            : MyColors.melon;
      },
      child: Container(
        color: MyColors.melon,
      ),
    );
  }
}
