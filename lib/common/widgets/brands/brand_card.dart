import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/circular_image.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:project4_ngotband_quadat/utils/constants/enums.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyBrandCard extends StatelessWidget {
  const MyBrandCard({super.key,
    required this.showBorder,
    this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      /// Container Design
      child: MyRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(MySizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Icons
            const Flexible(
                child: MyCircularImage(
                  isNetworkImage: false,
                  image: MyImages.kid,
                  backgroundColor: Colors.transparent,
                ),
            ),
            const SizedBox(width: MySizes.spaceBtwItems / 2,),

            Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BrandTitleTextWithVerifiedIcon(title: 'Kid', brandTextSize: TextSizes.large,),
                    Text(
                      '24 books',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}