import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    required this.height,
    super.key,
  });

  final double height;

  @override
  Widget build(BuildContext context) => SizedBox(height: height);
}

class ExpandedSpace extends StatelessWidget {
  const ExpandedSpace({super.key});

  @override
  Widget build(BuildContext context) => const Expanded(child: SizedBox());
}
