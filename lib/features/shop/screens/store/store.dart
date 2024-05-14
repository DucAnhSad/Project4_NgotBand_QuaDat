import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/tabbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/layouts/grid_layout.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/store/widgets/category_card.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/store/widgets/category_tab.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';



class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
      
                    /// Categories Grid
                    MyGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index){
                      return const CategoryCard(
                        showBorder: false,
                        image: MyImages.horror,
                        title: 'Horror',
                        productsCount: '103',);
                    })
                  ],
                ),
              ),
              /// Tabs
              bottom: const MyTabBar(
                tabs: [
                Tab(child: Text('Detective'),),
                Tab(child: Text('Business'),),
                Tab(child: Text('Horror'),),
                Tab(child: Text('Kid'),),
                Tab(child: Text('Romantic'),),
              ],),
            ),
          ];
        },
          /// Body
          body: const TabBarView(
            children: [
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}




