# layout_grids

`layout_grids` is a Dart/Flutter package that makes it easy to overlay several types of grids on your UI, to make sure that it lines up nicely with your design's grid system.

## Installation

To use this plugin in your project, add `layout_grids` as a dependency in your pubspec.yaml file.

## Usage

Wrap the UI that should conform to your grid system with a `GridOverlay`. This widget takes a list of `grids` and an optional `enabled` parameter, which defaults to `true`.

## Supported Grid Types

This package supports various layout grids that can be visualized in UI/UX tools like Figma and Adobe XD.

### Pixel Grids

Simple square grids with a fixed cell size.

* `PixelGrid`

### Flex Grids
Flex grids are composed of flexible bands (rows or columns) with a fixed count, gutter size, and margin size. After allocating space for the margins and gutters, the bands expand to fill the remaining space.

* `FlexRowGrid`
* `FlexColumnGrid`

### Fixed Band Grids
A grid of bands (rows or columns) with a fixed size, count, and gutter size. An alignment and offset can optionally be specified, but the grid positioning defaults to centered.

* `FixedRowGrid`
* `FixedColumnGrid`

## Example

**TODO**

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)