import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const MyBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1. Product Image Slider
            const MyProductImageSlider(),

            /// 2. Product Details
            Padding(
              padding: const EdgeInsets.only(right: MySizes.defaultSpace, left: MySizes.defaultSpace, bottom: MySizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share button
                  const MyRatingAndShare(),

                  /// Price, Title, Stock & Brand
                  const MyProductMetaData(),

                  /// Attributes
                  const MyProductAttributes(),
                  const SizedBox(height: MySizes.spaceBtwSections,),
                  /// Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  /// Description
                  const MySectionHeading(title: 'Description'),
                  const SizedBox(height: MySizes.spaceBtwItems,),
                  const ReadMoreText('This is long description This is long description '
                      'This is long description This is long description'
                      'This is long description This is long description'
                      'This is long description This is long description'
                      'This is long description This is long description'
                      'This is long description This is long description',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: MySizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MySectionHeading(title: 'Reviews (199)', showActionButton: false,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined, size: 18,)),
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

