import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class MyBillingAddressSection extends StatelessWidget {
  const MyBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){},),
        Text('Zhao Li Ying', style: Theme.of(context).textTheme.bodyLarge,),

        Row(
          children: [
            const Icon(Icons.phone, color: MyColors.black, size: 16,),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Text('(+84) 1800 1147', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2,),

        Row(
          children: [
            const Icon(Icons.location_history, color: MyColors.black, size: 16,),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Flexible(child: Text('19 P. Lê Thanh Nghị, Bách Khoa, Hai Bà Trưng, Hà Nội, VN', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,))
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2,),
      ],
    );
  }
}
