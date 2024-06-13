import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyCircularIcon(
          icon: Icons.remove,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyHelperFunctions.isDarkMode(context) ? Colors.white : Colors.black,
          backgroundColor: MyHelperFunctions.isDarkMode(context)? MyColors.darkerGrey : MyColors.light,
        ),
        const SizedBox(width: MySizes.spaceBtwItems,),
        Text('2', style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: MySizes.spaceBtwItems,),

        const MyCircularIcon(
          icon: Icons.add,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: Colors.white,
          backgroundColor: MyColors.primary,
        ),
      ],
    );
  }
}