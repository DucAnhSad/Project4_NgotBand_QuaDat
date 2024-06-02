import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/circular_image.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_price_text.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_title_text.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/enums.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyProductMetaData extends StatelessWidget {
  const MyProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            MyRoundedContainer(
              radius: MySizes.sm,
              backgroundColor: MyColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: MySizes.sm, vertical: MySizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: MyColors.black),),
            ),
            const SizedBox(width: MySizes.spaceBtwItems,),

            /// Price
            const MyProductPriceText(price: '1200', lineThrough: true,),
            const SizedBox(width: MySizes.spaceBtwItems,),
            const MyProductPriceText(price: '900', isLarge: true,),
          ],
        ),
        const SizedBox(width: MySizes.spaceBtwItems / 1.5,),

        /// Title
        const MyProductTitleText(title: 'Dream Decoding'),
        const SizedBox(width: MySizes.spaceBtwItems / 1.5,),

        /// Stock Status
        Row(
          children: [
            const MyProductTitleText(title: 'Status'),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(width: MySizes.spaceBtwItems / 1.5,),

        /// Brand
        const Row(
          children: [
            MyCircularImage(
              image: MyImages.detective,
              width: 32,
              height: 32,
            ),
            BrandTitleTextWithVerifiedIcon(title: 'Detective', brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
