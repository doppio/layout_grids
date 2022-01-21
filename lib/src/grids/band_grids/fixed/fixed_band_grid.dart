import 'package:flutter/material.dart';

import '../band_grid.dart';

enum GridAlignment {
  start,
  center,
  end,
}

/// A grid of [Band]s (rows or columns) with a fixed size, count, and gutter.
///
/// An alignment and offset can optionally be provided, but the grid defaults to
/// being centered.
class FixedBandGrid extends BandGrid {
  final double size;
  final double offset;
  final GridAlignment alignment;

  const FixedBandGrid({
    required Color? color,
    required Axis axis,
    required int count,
    required double? gutter,
    required this.size,
    this.offset = 0.0,
    this.alignment = GridAlignment.center,
  }) : super(
          color: color,
          axis: axis,
          count: count,
          gutter: gutter,
        );

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        axis == Axis.horizontal ? offset : 0,
        axis == Axis.horizontal ? 0 : offset,
      ),
      child: super.build(context),
    );
  }

  @override
  MainAxisAlignment getMainAxisAlignment() {
    switch (alignment) {
      case GridAlignment.start:
        return MainAxisAlignment.start;
      case GridAlignment.end:
        return MainAxisAlignment.end;
      case GridAlignment.center:
      default:
        return MainAxisAlignment.center;
    }
  }

  @override
  double get bandSize => size;
}
