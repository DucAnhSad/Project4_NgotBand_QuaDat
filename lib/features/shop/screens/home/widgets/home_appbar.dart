import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/text_strings.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(MyText.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: MyColors.grey),),
        Text(MyText.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyColors.white),),
      ],
    ),
      actions: [
        MyCartCounterIcon(onPressed: (){}, iconColor: MyColors.white,)
      ],

    );
  }
}