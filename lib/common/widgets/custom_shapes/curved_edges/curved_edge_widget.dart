import 'package:flutter/material.dart';
import 'package:my_eccommerce/common/widgets/custom_shapes/curved_edges/clip_path.dart';

class LCurvedEdgeWidget extends StatelessWidget {
  const LCurvedEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: LCustomCurvedEdges(), child: child);
  }
}
