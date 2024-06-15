import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class MyCartItems extends StatelessWidget {
  const MyCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: MySizes.spaceBtwSections,),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          const MyCartItem(),
          if (showAddRemoveButtons) const SizedBox(height: MySizes.spaceBtwItems,),

          if (showAddRemoveButtons)
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70,),
                  /// Add Remove Button
                  ProductQuantityWithAddRemoveButton(),
                ],
              ),
              /// Product total price
              MyProductPriceText(price: '1200'),
            ],
          ),
        ],
      ),
    );
  }
}
