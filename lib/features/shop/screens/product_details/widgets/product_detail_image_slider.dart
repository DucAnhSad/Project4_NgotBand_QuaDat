
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:project4_ngotband_quadat/common/widgets/icons/circular_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/rounded_image.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyProductImageSlider extends StatelessWidget {
  const MyProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyCurvedEdgesWidget(
      child: Container(
        color: dark? MyColors.darkerGrey : MyColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(height: 360, child:
            Padding(
              padding: EdgeInsets.all(MySizes.productImageRadius),
              child: Center(child: Image(image: AssetImage(MyImages.book4),),
              ),
            ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: MySizes.spaceBtwItems,),
                  itemBuilder: (_, index) => MyRoundedImage(
                    width: 80,
                    backgroundColor: dark ? MyColors.dark : MyColors.white,
                    imageUrl: MyImages.book3,
                    border: Border.all(color: MyColors.primary),
                    padding: const EdgeInsets.all(MySizes.sm),
                  ),
                ),
              ),
            ),

            /// Appbar Icons
            const MyAppBar(
              showBackArrow: true,
              actions: [
                MyCircularIcon(icon: Iconsax.heart, color: Colors.red,),
              ],
            )

          ],
        ),
      ),
    );
  }
}