import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/constants/text_strings.dart';

class MySignUpForm extends StatelessWidget {
  const MySignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: MyText.firstName,
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(width: MySizes.spaceBtwFields,),

            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: MyText.lastName,
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwFields,),

        /// Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: MyText.userName, prefixIcon: Icon(Icons.edit)),
        ),
        const SizedBox(height: MySizes.spaceBtwFields,),

        /// Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: MyText.email, prefixIcon: Icon(Iconsax.direct_left)),
        ),
        const SizedBox(height: MySizes.spaceBtwFields,),

        /// Phone
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: MyText.phoneNo, prefixIcon: Icon(Icons.phone)),
        ),
        const SizedBox(height: MySizes.spaceBtwFields,),

        /// Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: MyText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)
          ),
        ),
        const SizedBox(height: MySizes.spaceBtwSections,),


        /// Term & Conditions Checkbox
        const MyTermAndConditionCheckbox(),
        const SizedBox(height: MySizes.spaceBtwSections,),

        /// Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: (){}, child: const Text(MyText.createAccount),),),
      ],
    ),);
  }
}