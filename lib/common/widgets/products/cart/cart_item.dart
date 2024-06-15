import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      /// Image
      children: [
        const MyRoundedImage(
          imageUrl: MyImages.book6,
          width: 90,
          height: 90,
          padding: EdgeInsets.all(MySizes.sm),
        ),
        const SizedBox(height: MySizes.spaceBtwSections,),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: 'Detective'),
              const Flexible(child: MyProductTitleText(title: 'Nice Detective Book everyone will like it and so am I',)),
              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Category ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Detective ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Publisher ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Nhã Nam', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}