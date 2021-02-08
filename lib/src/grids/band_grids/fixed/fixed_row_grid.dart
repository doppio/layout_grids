import 'package:flutter/material.dart';

import 'fixed_band_grid.dart';

/// A grid of rows with a fixed height, count, and gutter.
///
/// An alignment and offset can optionally be provided, but the grid defaults to
/// being centered.
class FixedRowGrid extends FixedBandGrid {
  const FixedRowGrid({
    Color color,
    double gutter,
    @required int count,
    @required double height,
    GridAlignment alignment = GridAlignment.center,
    double offset = 0.0,
  }) : super(
          color: color,
          axis: Axis.vertical,
          count: count,
          gutter: gutter,
          size: height,
          offset: offset,
          alignment: alignment,
        );
}
