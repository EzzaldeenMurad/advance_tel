// import 'dart:math' as math;
// import 'package:flutter/material.dart';

// class MyCircularWidgetWithPercentage extends StatelessWidget {
//   final double percentage;
//   final double strokeWidth;
//   final Color backgroundColor;
//   final Color foregroundColor;
 
//   final TextStyle textStyle;
//   double? fontSize;

//    MyCircularWidgetWithPercentage({
//     Key? key,
//     required this.percentage,
//     this.strokeWidth = 10.0,
//     this.backgroundColor = Colors.red,
//     this.foregroundColor = Colors.black,
//     this.textStyle = TextStyle(fontSize: fontSize ?? 20.0,
//      color: gg ?? Colors.white), this.gg,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: _MyCircularPainter(
//         percentage: percentage,
//         strokeWidth: strokeWidth,
//         backgroundColor: backgroundColor,
//         foregroundColor: foregroundColor,
//         textStyle: textStyle,
//       ),
//       child: Center(
//         child: Text(
//           '${percentage.toInt()}%',
//           style: textStyle,
//         ),
//       ),
//     );
//   }
// }

// class _MyCircularPainter extends CustomPainter {
//   final double percentage;
//   final double strokeWidth;
//   final Color backgroundColor;
//   final Color foregroundColor;
//   final TextStyle textStyle;

//   _MyCircularPainter({
//     required this.percentage,
//     required this.strokeWidth,
//     required this.backgroundColor,
//     required this.foregroundColor,
//     required this.textStyle,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = math.min(size.width, size.height) / 2 - strokeWidth / 2;
//     const startAngle = -math.pi / 2;
//     final sweepAngle = percentage / 100 * 2 * math.pi;
//     final backgroundPaint = Paint()
//       ..color = backgroundColor
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke;
//     final foregroundPaint = Paint()
//       ..color = foregroundColor
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke;
//     final textSpan = TextSpan(text: '${percentage.toInt()}%', style: textStyle);
//     final textPainter = TextPainter(
//       text: textSpan,
//       textAlign: TextAlign.center,
//       textDirection: TextDirection.ltr,
//     )..layout(minWidth: 0, maxWidth: size.width);
//     //..paint(canvas, center.translate(-textPainter.width / 2, -textPainter.height / 2));

//     // Draw background circle
//     canvas.drawCircle(center, radius, backgroundPaint);

//     // Draw foreground arc
//     canvas.drawArc(
//       Rect.fromCircle(center: center, radius: radius),
//       startAngle,
//       sweepAngle,
//       false,
//       foregroundPaint,
//     );
//   }

//   @override
//   bool shouldRepaint(_MyCircularPainter oldDelegate) {
//     return oldDelegate.percentage != percentage ||
//         oldDelegate.strokeWidth != strokeWidth ||
//         oldDelegate.backgroundColor != backgroundColor ||
//         oldDelegate.foregroundColor != foregroundColor ||
//         oldDelegate.textStyle != textStyle;
//   }
// }
import 'dart:math' as math;
import 'package:flutter/material.dart';

class MyCircularWidgetWithPercentage extends StatelessWidget {
  final double percentage;
  final double strokeWidth;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle textStyle;

  const MyCircularWidgetWithPercentage({
    Key? key,
    required this.percentage,
    this.strokeWidth = 10.0,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MyCircularPainter(
        percentage: percentage,
        strokeWidth: strokeWidth,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        textStyle: textStyle,
      ),
      child: Center(
        child: Text(
          '${percentage.toInt()}%',
          style: textStyle,
        ),
      ),
    );
  }
}

class _MyCircularPainter extends CustomPainter {
  final double percentage;
  final double strokeWidth;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle textStyle;

  _MyCircularPainter({
    required this.percentage,
    required this.strokeWidth,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.textStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2 - strokeWidth / 2;
    const startAngle = -math.pi / 2;
    final sweepAngle = percentage / 100 * 2 * math.pi;
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    final foregroundPaint = Paint()
      ..color = foregroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    final textSpan = TextSpan(text: '${percentage.toInt()}%', style: textStyle);
    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: size.width);
    //..paint(canvas, center.translate(-textPainter.width / 2, -textPainter.height / 2));

    // Draw background circle
    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw foreground arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(_MyCircularPainter oldDelegate) {
    return oldDelegate.percentage != percentage ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.backgroundColor != backgroundColor ||
        oldDelegate.foregroundColor != foregroundColor ||
        oldDelegate.textStyle != textStyle;
  }
}