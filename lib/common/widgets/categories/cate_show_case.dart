import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/store/widgets/category_card.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class CategoryShowcase extends StatelessWidget {
  const CategoryShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      padding: const EdgeInsets.all(MySizes.md),
      child: Column(
        children: [
          /// Cate with Products count
          const CategoryCard(showBorder: false, image: MyImages.detective, title: 'Kid', productsCount: '56'),
          const SizedBox(height: MySizes.spaceBtwItems,),

          /// Cate top 3
          Row(
            children: images.map((image) => cateTopProductImageWidget(image, context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget cateTopProductImageWidget(String image, context){
    return Expanded(
        child: MyRoundedContainer(
          height: 100,
          backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColors.darkGrey : MyColors.light,
          margin: const EdgeInsets.only(right: MySizes.sm),
          padding: const EdgeInsets.all(MySizes.md),
          child: Image(fit: BoxFit.contain, image: AssetImage(image),),
        )
    );
  }
}