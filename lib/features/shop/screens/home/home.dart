
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:project4_ngotband_quadat/common/widgets/layouts/grid_layout.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/sub_category/sub_categories.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  MyHomeAppBar(),
                  SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  /// Searchbar
                  MySearchContainer(
                    text: 'Search',
                  ),
                  SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  /// Category
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        MySectionHeading(
                          title: 'Popular Categories',
                          showActionButton: true,
                          textColor: MyColors.white,
                        ),
                        SizedBox(
                          height: MySizes.spaceBtwItems,
                        ),

                        /// Categories
                        MyHomeCategories(),
                      ],
                    ),
                  ),

                  SizedBox(height: MySizes.spaceBtwSections,)
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              /// Promo Slider
              child: Column(
                children: [
                  const MyPromoSlider(banners: [MyImages.detectiveBanner, MyImages.businessBanner, MyImages.booksDay, MyImages.psychologyBanner],),
                  const SizedBox(height: MySizes.spaceBtwSections,),
                  /// Popular products
                  MyGridLayout(itemCount: 6, itemBuilder: (_, index) => const MyProductCardVertical()),
                ],
              ),
            ),

            const SizedBox(height: MySizes.spaceBtwSections,),
          ],
        ),
      ),
    );
  }
}


class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(image: MyImages.detective, title: 'Detective', onTap: () => Get.to(() => const SubCategoriesScreen()),);
        },
      ),
    );
  }
}


