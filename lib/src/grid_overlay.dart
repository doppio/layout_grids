import 'package:flutter/material.dart';

import './grids/grid.dart';

/// An overlay of one or more grids.
///
/// This widget should wrap whatever content is being laid out on a grid system.
/// This will often be the entire app.
class GridOverlay extends StatelessWidget {
  final List<Grid> grids;
  final Widget child;
  final bool enabled;

  const GridOverlay({
    required this.grids,
    required this.child,
    this.enabled = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          child,
          if (enabled)
            ...grids.map(
              (grid) => Positioned.fill(child: grid),
            ),
        ],
      ),
    );
  }
}
