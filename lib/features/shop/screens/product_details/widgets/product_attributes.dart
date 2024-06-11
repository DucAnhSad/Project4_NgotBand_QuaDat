import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/chips/choice_chip.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_price_text.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_title_text.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyProductAttributes extends StatelessWidget {
  const MyProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attribute Pricing & Description
        MyRoundedContainer(
          padding: const EdgeInsets.all(MySizes.md),
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const MySectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: MySizes.spaceBtwItems,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          MyProductTitleText(title: 'Price :', smallSize: true,),

                          /// Actual Price
                          MyProductPriceText(price: '1000', lineThrough: true,),
                          SizedBox(width: MySizes.spaceBtwItems,),
                          /// Sale Price
                          MyProductPriceText(price: '900', isLarge: true,),
                        ],
                      ),
                      /// Stock
                      Row(
                        children: [
                          const MyProductTitleText(title: 'Stock : ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
              /// Variation Description
              const MyProductTitleText(title: 'This is the Description of the Product and it can go up to max 4 lines.',
              smallSize: true,
              maxLines: 4,),
            ],
          ),
        ),
        const SizedBox(width: MySizes.spaceBtwSections,),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Color', showActionButton: false,),
            const SizedBox(height: MySizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                MyChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                MyChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: MySizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'S', selected: true, onSelected: (value){},),
                MyChoiceChip(text: 'M', selected: false, onSelected: (value){},),
                MyChoiceChip(text: 'L', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),
      ],
    );
  }
}
