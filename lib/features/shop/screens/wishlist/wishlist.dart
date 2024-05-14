import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/icons/circular_icon.dart';
import 'package:project4_ngotband_quadat/common/widgets/layouts/grid_layout.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/home/home.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          MyCircularIcon(icon: Icons.add, onPressed: () => Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              MyGridLayout(itemCount: 6, itemBuilder: (_, index) => const MyProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
