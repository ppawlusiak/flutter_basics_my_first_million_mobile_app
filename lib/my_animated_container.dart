import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({
    this.firstColor = MyColors.indigo,
    this.secondColor = MyColors.vividGamboge,
    this.shouldUseFancyShape = false,
    super.key,
  });

  final Color firstColor;
  final Color secondColor;
  final bool shouldUseFancyShape;

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  late Color containerColor;
  @override
  void initState() {
    super.initState();

    containerColor = widget.firstColor;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.shouldUseFancyShape) {
      return GestureDetector(
        onTap: () {
          debugPrint('onTap called!!');
          setState(() {
            containerColor = containerColor == widget.firstColor
                ? widget.secondColor
                : widget.firstColor;
          });
        },
        child: AnimatedContainer(
          //New feature
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(30),
          ),
          duration: const Duration(milliseconds: 700),
          width: 50,
          height: 50,
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        debugPrint('onTap called!!');
        setState(() {
          containerColor = containerColor == widget.firstColor
              ? widget.secondColor
              : widget.firstColor;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        width: 50,
        height: 50,
        color: containerColor,
      ),
    );
  }
}
