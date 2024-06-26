import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/icons/circular_icon.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyBottomAddToCart extends StatelessWidget {
  const MyBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace, vertical: MySizes.defaultSpace/2),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MySizes.cardRadiusLg),
          topRight: Radius.circular(MySizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const MyCircularIcon(
                icon: Icons.remove,
                backgroundColor: MyColors.darkGrey,
                width: 40,
                height: 40,
                color: MyColors.white,
              ),
              const SizedBox(width: MySizes.spaceBtwItems,),
              Text('2', style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: MySizes.spaceBtwItems,),
              const MyCircularIcon(
                icon: Icons.add,
                backgroundColor: MyColors.black,
                width: 40,
                height: 40,
                color: MyColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: MyColors.black,
                side: const BorderSide(color: MyColors.black),
              ),
              child: const Text('Add to Cart')),
        ],
      ),
    );
  }
}
