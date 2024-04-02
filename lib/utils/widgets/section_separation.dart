import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class SectionSeparator extends StatelessWidget {
  SectionSeparator({
    super.key,
    required this.sectionText,
    this.buttonText,
    this.onTap,
    this.isButton,
  });

  bool? isButton;
  String? sectionText;
  String? buttonText;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            sectionText!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          isButton == true
              ? GestureDetector(
              onTap: onTap,
              child: Text(buttonText!,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColor.secondary)))
              : const Text(""),
        ],
      ),
    );
  }
}
