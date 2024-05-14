import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project4_ngotband_quadat/common/widgets/login_signup/form_divider.dart';
import 'package:project4_ngotband_quadat/common/widgets/login_signup/social_buttons.dart';
import 'package:project4_ngotband_quadat/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(MyText.signUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Form
              const MySignUpForm(),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Divider
              MyFormDivider(dividerText: MyText.orSignUpWith.capitalize!),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Social Button
              const MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
