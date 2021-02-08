import 'package:flutter/material.dart';

import 'grid.dart';

/// A grid with cells of a fixed size.
class PixelGrid extends Grid {
  final double cellSize;

  const PixelGrid({
    this.cellSize = 8.0,
    Color color,
    Key key,
  }) : super(
          key: key,
          color: color,
        );

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _PixelGridPainter(
        color: color,
        gridSize: cellSize,
      ),
    );
  }
}

class _PixelGridPainter extends CustomPainter {
  final Color color;
  final double gridSize;

  final Paint _gridPaint;

  _PixelGridPainter({
    @required this.gridSize,
    @required this.color,
  }) : _gridPaint = Paint()..color = color;

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the horizontal lines.
    for (double y = 0; y < size.height; y += gridSize) {
      final start = Offset(0, y);
      final end = Offset(size.width, y);

      canvas.drawLine(start, end, _gridPaint);
    }

    // Draw the vertical lines.
    for (double x = 0; x < size.width; x += gridSize) {
      final start = Offset(x, 0);
      final end = Offset(x, size.height);

      canvas.drawLine(start, end, _gridPaint);
    }
  }

  @override
  bool shouldRepaint(_PixelGridPainter oldPainter) {
    return gridSize != oldPainter.gridSize || color != oldPainter.color;
  }
}
