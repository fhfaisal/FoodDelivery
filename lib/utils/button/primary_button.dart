
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.controller,
    required this.text,
    required this.onTap,
  });

  final controller;
  final Widget text;
  final Callback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.transparent,
        elevation: 4,
        child: Container(
          height: MediaQuery.of(context).size.height/18,
          width: MediaQuery.of(context).size.width/3,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                    0.1,
                    1
                  ],
                  colors: [
                    Color(0xff53E88B),
                    Color(0xff15BE77),
                  ])
          ),
          child: text,
        ),
      ),
    );
  }
}