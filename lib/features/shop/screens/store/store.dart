import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/layouts/grid_layout.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/enums.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          MyCartCounterIcon(onPressed: (){}, iconColor: Colors.grey,)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScolled){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: MyHelperFunctions.isDarkMode(context)? MyColors.black : MyColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  /// Search bar
                  const SizedBox(height: MySizes.spaceBtwItems,),
                  const MySearchContainer(text: 'Search your book', showBorder: true, padding: EdgeInsets.zero,),
                  const SizedBox(height: MySizes.spaceBtwSections,),

                  /// Featured categories
                  MySectionHeading(title: 'Featured Categories', onPressed: (){},),
                  const SizedBox(height: MySizes.spaceBtwItems / 1.5,),

                  MyGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index){
                    return GestureDetector(
                      onTap: (){},
                      child: MyRoundedContainer(
                        padding: const EdgeInsets.all(MySizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            /// Icon
                            const Flexible(
                              child: MyCircularImage(
                                isNetworkImage: false,
                                image: MyImages.horror,
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(width: MySizes.spaceBtwItems / 2,),

                            /// Text
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const BrandTitleTextWithVerifiedIcon(title: 'Horror', brandTextSize: TextSizes.large,),
                                  Text(
                                    '102 products',
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
                  })
                ],
              ),
            ),
          ),
        ];
      }, body: Container(),),
    );
  }
}


