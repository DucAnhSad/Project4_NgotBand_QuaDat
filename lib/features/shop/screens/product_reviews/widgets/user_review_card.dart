import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/ratings/rating_indicator.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key,
    required this.reviewerName,
    required this.review,
    required this.reply,
  });

  final String reviewerName, review, reply;
  final String reviewDate = '10 Jun, 2024';
  final String replyDate = '11 Jun, 2024';
  final String companyName = 'QUADAT Book';

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(MyImages.userProfileImage1),),
                const SizedBox(width: MySizes.spaceBtwItems,),
                Text(reviewerName, style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(width: MySizes.spaceBtwItems,),

        /// Reviews
        Row(
          children: [
            const MyRatingBarIndicator(rating: 5),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Text(reviewDate, style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems,),
        ReadMoreText(
          review,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColors.primary),
          lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColors.primary),
        ),
        const SizedBox(height: MySizes.spaceBtwItems,),

        /// Company Review
        MyRoundedContainer(
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(companyName, style: Theme.of(context).textTheme.titleMedium,),
                    Text(replyDate, style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: MySizes.spaceBtwItems,),
                ReadMoreText(
                  reply,
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColors.primary),
                  lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: MySizes.spaceBtwSections,),
      ],
    );
  }
}
