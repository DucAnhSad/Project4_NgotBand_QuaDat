import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/checkout/checkout.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),

        /// Items in Cart
        child: MyCartItems(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout 1200₫'),),
      ),
    );
  }
}
