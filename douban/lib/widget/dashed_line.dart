import 'package:flutter/material.dart';
class SYDashedLine extends StatelessWidget {

  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final Color showColor;     // 虚线看得见的颜色
  final Color hideColor;     // 虚线看不见的颜色

  SYDashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.showColor = Colors.red,
    this.hideColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){

        // 拿到父视图的宽度或者高度来计算count
        int count = 0;
        if (this.axis == Axis.horizontal){
          count = (constraints.maxWidth / this.dashedWidth).floor();
        } else {
          count = (constraints.maxHeight / this.dashedHeight).floor();
        }
        return Flex(
          direction: this.axis,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(count, (index){
            return SizedBox(
              width: this.dashedWidth,
              height: this.dashedHeight,
              child: DecoratedBox(decoration: BoxDecoration(color: index % 2 != 0 ? this.showColor : this.hideColor)), // 设置颜色
            );
          }),
        );
      },
    );
  }
}