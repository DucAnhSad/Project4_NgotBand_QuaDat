import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class MySortableProducts extends StatelessWidget {
  const MySortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Drop down
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort_copy)),
            items: ['Name', 'Best Selling', 'Sale', 'Newest', 'Popularity']
                .map((option) =>
                DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}
        ),
        const SizedBox(height: MySizes.spaceBtwSections,),
        /// Products
        MyGridLayout(itemCount: 8, itemBuilder: (_, index) => const MyProductCardVertical()),
      ],
    );
  }
}