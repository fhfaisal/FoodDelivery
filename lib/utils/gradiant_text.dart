import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
class GradientText extends StatelessWidget {
   GradientText(
      this.text, {super.key,
        this.gradient,
        this.style,
        this.context
      });

  final String text;
  final TextStyle? style;
  final Gradient? gradient;
  BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => LinearGradient(colors: [
        AppColor.linear1,
        AppColor.linear2,
      ]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: AutoSizeText(text, style: style),
    );
  }
}