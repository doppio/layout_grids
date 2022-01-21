import 'package:flutter/material.dart';

import 'fixed_band_grid.dart';

/// A grid of columns with a fixed size, count, and gutter.
///
/// An alignment and offset can optionally be provided, but the grid defaults to
/// being centered.
class FixedColumnGrid extends FixedBandGrid {
  const FixedColumnGrid({
    Color? color,
    required int count,
    required double gutter,
    required double width,
    GridAlignment alignment = GridAlignment.center,
    double offset = 0.0,
  }) : super(
          color: color,
          axis: Axis.horizontal,
          count: count,
          gutter: gutter,
          size: width,
          offset: offset,
          alignment: alignment,
        );
}
