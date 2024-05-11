import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/constants/text_strings.dart';

class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark? MyImages.darkAppLogo: MyImages.lightAppLogo),
        ),

        Text(MyText.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: MySizes.sm),
        Text(MyText.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}