import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/circular_image.dart';
import 'package:project4_ngotband_quadat/common/widgets/texts/section_heading.dart';
import 'package:project4_ngotband_quadat/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MyCircularImage(image: MyImages.user1, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: MySizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems,),

              /// Heading Profile Info
              const MySectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: MySizes.spaceBtwItems,),

              MyProfileMenu(onPressed: () {}, title: 'Name', value: 'Zhao Li Ying'),
              MyProfileMenu(onPressed: () {}, title: 'Username', value: 'zhao_li_ying'),

              const SizedBox(height: MySizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems,),

              /// Heading Personal Info
              const MySectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: MySizes.spaceBtwItems,),

              MyProfileMenu(onPressed: () {}, title: 'User ID', value: '03604', icon: Icons.copy,),
              MyProfileMenu(onPressed: () {}, title: 'E-mail', value: 'zhaoliying@user.com'),
              MyProfileMenu(onPressed: () {}, title: 'Phone Number', value: '0123456789'),
              MyProfileMenu(onPressed: () {}, title: 'Gender', value: 'Female'),
              MyProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '16 Oct, 1987'),

              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
