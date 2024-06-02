import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class MyRatingAndShare extends StatelessWidget {
  const MyRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Rating
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 24,),
            const SizedBox(width: MySizes.spaceBtwItems/2,),
            Text.rich(
              TextSpan(
                  children: [
                    TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                    const TextSpan(text: '(109)'),
                  ]
              ),
            ),
          ],
        ),
        /// Share button
        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: MySizes.iconMd,)),
      ],
    );
  }
}