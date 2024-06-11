import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: const MyAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and reviews are verified and are from people who use same type of device that you use."),
              const SizedBox(height: MySizes.spaceBtwItems,),

              /// Overall Product Rating
              const MyOverallProductRating(),
              const MyRatingBarIndicator(rating: 4.5,),
              Text('12.233', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// User Reviews List
              const UserReviewCard(
                reviewerName: 'Zhao Li Ying',
                review: 'Awesome app with smooth interface. I can easily find my favorite book and make purchases seamlessly. Love it!',
                reply: 'Thank you for your review. Bringing you a satisfying experience is our pleasure. We hope you will have many more wonderful experiences with us',
              ),
              const UserReviewCard(
                reviewerName: 'Zhao Li Ying 2',
                review: '2 Awesome app with smooth interface. I can easily find my favorite book and make purchases seamlessly. Love it!',
                reply: '2 Thank you for your review. Bringing you a satisfying experience is our pleasure. We hope you will have many more wonderful experiences with us',
              ),
              const UserReviewCard(
                reviewerName: 'Zhao Li Ying 3',
                review: '3 Awesome app with smooth interface. I can easily find my favorite book and make purchases seamlessly. Love it!',
                reply: ' 3Thank you for your review. Bringing you a satisfying experience is our pleasure. We hope you will have many more wonderful experiences with us',
              ),
              const UserReviewCard(
                reviewerName: 'Zhao Li Ying 4',
                review: '4 Awesome app with smooth interface. I can easily find my favorite book and make purchases seamlessly. Love it!',
                reply: '4 Thank you for your review. Bringing you a satisfying experience is our pleasure. We hope you will have many more wonderful experiences with us',
              ),
            ],
          ),
        ),
      ),
    );
  }
}




