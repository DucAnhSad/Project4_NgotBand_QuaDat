import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/success_screen/success_screen.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:project4_ngotband_quadat/navigation_menu.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const MyCartItems(showAddRemoveButtons: false,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Coupon TextField
              const MyCouponCode(),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Billing Section
              MyRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: dark ? MyColors.black : MyColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    MyBillingAmountSection(),
                    SizedBox(height: MySizes.spaceBtwItems,),

                    /// Divider
                    Divider(),
                    SizedBox(height: MySizes.spaceBtwItems,),

                    /// Payment Method
                    MyBillingPaymentSection(),
                    SizedBox(height: MySizes.spaceBtwItems,),

                    /// Address
                    MyBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
              image: MyImages.successPayment,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            )
          ),
          child: const Text('Checkout 1200₫'),
        ),
      ),
    );
  }
}
