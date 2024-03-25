
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';

class CustomInputForm extends StatelessWidget {
  const CustomInputForm({
    super.key,
    required this.labelText,
    required this.controller,
    required this.isPrefixIcon,
    this.icon,
  });
  final TextEditingController controller;
  final String labelText;
  final bool isPrefixIcon;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        cursorColor: AppColor.primary,
        decoration: InputDecoration(
          prefixIcon: isPrefixIcon? icon:null,
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: AppColor.primary),
          contentPadding: isPrefixIcon?const EdgeInsets.fromLTRB(25, 15, 15, 15):const EdgeInsets.all(15),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColor.inputBorder,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: AppColor.primary,width: 2)
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: AppColor.primary,)
          ),
        ),
      ),
    );
  }
}