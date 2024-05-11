import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/features/authentication/screens/signup/signup.dart';
import 'package:project4_ngotband_quadat/navigation_menu.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/constants/text_strings.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MyText.email),
            ),
            const SizedBox(height: MySizes.spaceBtwFields),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: MyText.password, suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: MySizes.spaceBtwFields / 2),

            /// Remember Me & Forget Password
            Row(
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(MyText.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(onPressed: (){}, child: const Text(MyText.forgetPassword))

              ],
            ),
            const SizedBox(height: MySizes.spaceBtwSections / 2),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: Text(MyText.signIn))),
            const SizedBox(height: MySizes.spaceBtwItems),
            /// Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreen()), child: Text(MyText.createAccount))),
          ],
        ),
      ),
    );
  }
}