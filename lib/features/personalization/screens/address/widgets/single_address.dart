import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class MySingleAddress extends StatelessWidget {
  const MySingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(MySizes.md),
      backgroundColor: selectedAddress ? MyColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? MyColors.darkerGrey : MyColors.grey,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress ? dark ? MyColors.light : MyColors.dark.withOpacity(0.8) : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zhao Li Ying',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: MySizes.sm / 2,),
              const Text(
                '(+84) 1800 1147',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: MySizes.sm / 2,),
              const Text('19 P. Lê Thanh Nghị, Bách Khoa, Hai Bà Trưng, Hà Nội, VN', softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}
