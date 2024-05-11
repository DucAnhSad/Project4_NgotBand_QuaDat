import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/text_strings.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyFormDivider extends StatelessWidget {
  const MyFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark? MyColors.darkGrey : MyColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(MyText.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark? MyColors.darkGrey : MyColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
      ],
    );
  }
}