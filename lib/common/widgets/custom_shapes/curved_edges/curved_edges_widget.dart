import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project4_ngotband_quadat/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:project4_ngotband_quadat/features/shop/screens/home/home.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';

class MyCurvedEdgesWidget extends StatelessWidget {
  const MyCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomCurveEdges(),
      child: child,
    );
  }
}