import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/product_price_text.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(height: MySizes.spaceBtwSections,),
          itemCount: 10,
          itemBuilder: (_, index) => const Column(
            children: [
              MyCartItem(),
              SizedBox(height: MySizes.spaceBtwItems,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70,),
                      /// Add Remove Button
                      ProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  MyProductPriceText(price: '1200'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('Checkout 1200₫'),),
      ),
    );
  }
}
