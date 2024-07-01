import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/common/widgets/brands/brand_card.dart';
import 'package:project4_ngotband_quadat/common/widgets/products/sortable/sortable_products.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: Text('Kid'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              MyBrandCard(showBorder: true),
              SizedBox(height: MySizes.spaceBtwSections,),

              MySortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
