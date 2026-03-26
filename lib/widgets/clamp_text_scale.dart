import 'package:flutter/material.dart';

class ClampTextScale extends StatelessWidget {
  final double max;
  final Widget child;
  const ClampTextScale({super.key, this.max = 1.2, required this.child});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    // Support both old/new text scaling APIs
    final current = mq.textScaler.clamp(maxScaleFactor: max);
    return MediaQuery(
      data: mq.copyWith(textScaler: current),
      child: child,
    );
  }
}
