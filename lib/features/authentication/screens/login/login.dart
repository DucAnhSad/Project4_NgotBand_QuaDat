import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project4_ngotband_quadat/common/styles/spacing_styles.dart';
import 'package:project4_ngotband_quadat/common/widgets/login_signup/form_divider.dart';
import 'package:project4_ngotband_quadat/common/widgets/login_signup/social_buttons.dart';
import 'package:project4_ngotband_quadat/features/authentication/screens/login/widgets/login_form.dart';
import 'package:project4_ngotband_quadat/features/authentication/screens/login/widgets/login_header.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/constants/text_strings.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

              /// Logo, Title, Sub,
              MyLoginHeader(dark: dark),

              /// Form
              MyLoginForm(),

              /// Divider
              MyFormDivider(dividerText: MyText.orSignInWith.capitalize!),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Footer
              MySocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}