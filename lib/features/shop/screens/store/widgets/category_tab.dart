import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/categories/cate_show_case.dart';
import 'package:project4_ngotband_quadat/common/widgets/layouts/grid_layout.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Categories
              const CategoryShowcase(images: [MyImages.book2, MyImages.book3, MyImages.book4],),
              const CategoryShowcase(images: [MyImages.book5, MyImages.book6, MyImages.book7],),
              const SizedBox(height: MySizes.spaceBtwItems,),
              /// Products
              MySectionHeading(title: 'You might like', showActionButton: true, onPressed: (){},),
              const SizedBox(height: MySizes.spaceBtwItems,),

              MyGridLayout(itemCount: 4, itemBuilder: (_, index) => const MyProductCardVertical())
            ],
          ),
        ),
      ]
    );
  }
}
