import 'package:flutter/material.dart';

/// The base class for all grids.
abstract class Grid extends StatelessWidget {
  final Color color;

  const Grid({
    Color color,
    Key key,
  })  : color = color ?? const Color.fromRGBO(254, 97, 163, 0.5),
        super(key: key);
}
