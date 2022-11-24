import 'package:flutter/material.dart';

class CircleIndicator extends Decoration {
  final Color color;
  final double radius;

  const CircleIndicator({
    required this.color,
    required this.radius,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(
      color: color,
      radius: radius,
    );
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({
    required this.color,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint paint;
    paint = Paint()..color = color;
    paint = paint..isAntiAlias = true;
    final Offset circleOffset = offset +
        Offset(
          cfg.size!.width / 2,
          cfg.size!.height - radius,
        );
    canvas.drawCircle(
      circleOffset,
      radius,
      paint,
    );
  }
}
