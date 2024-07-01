import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/circular_image.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:project4_ngotband_quadat/utils/constants/enums.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.showBorder,
    this.backgroundColor = Colors.transparent,
    this.isNetworkImage = false,
    required this.image,
    required this.title,
    required this.productsCount, this.onTap,
  });

  final bool showBorder;
  final Color backgroundColor;
  final bool isNetworkImage;
  final String image;
  final String title, productsCount;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MyRoundedContainer(
        padding: const EdgeInsets.all(MySizes.sm),
        showBorder: showBorder,
        backgroundColor: backgroundColor,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: MyCircularImage(
                isNetworkImage: isNetworkImage,
                image: image,
                backgroundColor: backgroundColor,
              ),
            ),
            const SizedBox(width: MySizes.spaceBtwItems / 2,),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleTextWithVerifiedIcon(title: title, brandTextSize: TextSizes.large,),
                  Text(
                    '$productsCount products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}