import 'package:flutter/material.dart';
import 'package:flutter_basics_my_first_million_mobile_app/my_animated_container.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Million'),
          backgroundColor: MyColors.columbiaBlue,
        ),
        body: Container(
          color: MyColors.onahau,
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        _buildTitle(),
        _buildFirstRow(),
      ],
    );
  }

  Widget _buildTitle() {
    return const Text(
      'My first million app!',
      style: TextStyle(
        color: MyColors.darkCharcoal,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }

  Widget _buildFirstRow() {
    return const Row(
      children: [
        MyAnimatedContainer(),
        Padding(
          padding: EdgeInsets.all(Dimens.normalMargin),
          child: MyAnimatedContainer(),
        ),
        MyAnimatedContainer(),
      ],
    );
  }
}
