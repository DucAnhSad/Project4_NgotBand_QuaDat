import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/icons/circular_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/rounded_image.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_price_text.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_title_text.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyProductCardHorizontal extends StatelessWidget {
  const MyProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColors.darkerGrey : MyColors.lightContainer,
      ),
      child: Row(
        children: [
          /// Thumbnail
          MyRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(MySizes.sm),
            backgroundColor: dark ? MyColors.dark : MyColors.light,
            child: Stack(
              children: [
                /// Thumbnail image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: MyRoundedImage(imageUrl: MyImages.book5, applyImageRadius: true,),
                ),


                /// Sale Tag
                Positioned(
                  top: 12,
                  child: MyRoundedContainer(
                    radius: MySizes.sm,
                    backgroundColor: MyColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: MySizes.sm, vertical: MySizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: MyColors.black),),
                  ),
                ),

                /// Favorite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: MyCircularIcon(icon: Iconsax.heart, color: Colors.red,),
                ),
              ],
            ),
          ),

          /// Detail
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: MySizes.sm, left: MySizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyProductTitleText(title: 'Nice Detective Book', smallSize: true,),
                      SizedBox(height: MySizes.spaceBtwItems / 2,),
                      BrandTitleTextWithVerifiedIcon(title: 'Nhã Nam'),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: MyProductPriceText(price: '1200')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: MyColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MySizes.cardRadiusMd),
                            bottomRight: Radius.circular(MySizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: MySizes.iconLg * 1.2,
                          height: MySizes.iconLg * 1.2,
                          child: Center(child: Icon(Icons.add, color: MyColors.white,),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
