import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/rounded_image.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Detective'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const MyRoundedImage(width: double.infinity, imageUrl: MyImages.detectiveBanner, applyImageRadius: true,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Sub- Categories
              Column(
                children: [
                  /// Heading
                  MySectionHeading(title: 'Classic', onPressed: (){},),
                  const SizedBox(height: MySizes.spaceBtwItems / 2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: MySizes.spaceBtwItems,),
                      itemBuilder: (context, index) => const MyProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
