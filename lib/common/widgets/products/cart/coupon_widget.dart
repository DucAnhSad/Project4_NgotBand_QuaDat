
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? MyColors.dark : MyColors.white,
      padding: const EdgeInsets.only(top: MySizes.sm, bottom: MySizes.sm, right: MySizes.sm, left: MySizes.md),
      child: Row(
        children: [
          /// Text Field
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? MyColors.white.withOpacity(0.6) : MyColors.dark.withOpacity(0.6),
                backgroundColor: MyColors.grey.withOpacity(0.3),
                side: BorderSide(color: MyColors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}