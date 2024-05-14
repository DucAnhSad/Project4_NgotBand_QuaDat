import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgesWidget(
      child: Container(
        color: MyColors.primary,
        padding: const EdgeInsets.only(bottom: 0),

        child: Stack(
          children: [
            Positioned(top: -150, right: -25,
                child: MyCircularContainer(
                  backGroundColor: MyColors.textWhite.withOpacity(0.1),)),
            Positioned(top: 100, right: 100,
                child: MyCircularContainer(
                  backGroundColor: MyColors.textWhite.withOpacity(0.1),)),
            child,
          ],
        ),
      ),
    );
  }
}