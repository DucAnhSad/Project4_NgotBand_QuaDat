import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/features/personalization/screens/address/address.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/cart/cart.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/order/order.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  MyAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),),
                  const SizedBox(height: MySizes.spaceBtwSections,),

                  /// User Profile Card
                  MyUserProfileTile(onPressed:() => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: MySizes.spaceBtwSections,),
                ],
              ),
            ),
            /// Body
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const MySectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: MySizes.spaceBtwItems,),

                  MySettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address',
                  onTap: () => Get.to(() => const UserAddressScreen()),),

                  MySettingsMenuTile(icon: Icons.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout',
                  onTap: () => Get.to(() => const CartScreen()),),

                  MySettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Order', subTitle: 'In-progress and Completed Orders',
                  onTap: () => Get.to(() => const OrderScreen()),),
                  const MySettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account',),
                  const MySettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons',),
                  const MySettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message',),
                  const MySettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts',),

                  /// App Settings
                  const SizedBox(height: MySizes.spaceBtwSections,),
                  const MySectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: MySizes.spaceBtwItems,),
                  const MySettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),

                  MySettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),

                  MySettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),

                  MySettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),

                  /// Logout Button
                  const SizedBox(height: MySizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),),
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections * 2.5,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
