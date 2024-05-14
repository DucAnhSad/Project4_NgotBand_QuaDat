
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/common/styles/shadows.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/icons/circular_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/rounded_image.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_price_text.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_title_text.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

import '../../texts/brand_title_text_with_verified_icon.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    /// Container with side padding, color, edges, radius and shadow
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColors.darkGrey : MyColors.white
        ),
        child: Column(
          children: [
            /// Thumbnail, wishlish button, discount tag
            MyRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColor: dark? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  /// Thumbnail image
                  const MyRoundedImage(imageUrl: MyImages.book1),

                  /// Sale tag
                  Positioned(
                    top: 12,
                    child: MyRoundedContainer(
                      radius: MySizes.sm,
                      backgroundColor: MyColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: MySizes.sm, vertical: MySizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: MyColors.black),),
                    ),
                  ),
                  /// Favorite Icon button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: MyCircularIcon(icon: Iconsax.heart, color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems / 2,),

            /// Details
            const Padding(
                padding: EdgeInsets.only(left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyProductTitleText(title: 'Book 1', smallSize: true,),
                  SizedBox(height: MySizes.spaceBtwItems / 2,),
                  BrandTitleTextWithVerifiedIcon(title: 'Business', iconColor: MyColors.primary,),
                ],
              ),
            ),
            const Spacer(),
            /// Price row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: MySizes.sm),
                  child: MyProductPriceText(price: '1.200'),
                ),

                /// Add to Cart button
                Container(
                  decoration: const BoxDecoration(
                      color: MyColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(MySizes.cardRadiusMd),
                        bottomRight: Radius.circular(MySizes.productImageRadius),
                      )
                  ),
                  child: const SizedBox(
                      width: MySizes.iconLg *1.2,
                      height: MySizes.iconLg *1.2,
                      child: Center(
                        child: Icon(Icons.add, color: MyColors.white,
                        ),
                      )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

