import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoBackgroundGradient extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;

  const VideoBackgroundGradient({
    super.key,
    this.colors = const [Colors.transparent, Colors.black],
    this.stops = const [0.1, 1],
  }) : assert(colors.length == stops.length,
            "colors and stops must have same length");

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            stops: stops,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}
