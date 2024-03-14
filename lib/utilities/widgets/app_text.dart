import 'package:flutter/material.dart';
import 'package:space_x/utilities/constant.dart';

class BodySmallText extends StatelessWidget {
  const BodySmallText({
    required this.text,
    this.textAlign = TextAlign.left,
    this.fontWeight = FontWeight.w500,
    this.color = darkColor,
    super.key,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color, fontWeight: fontWeight),
    );
  }
}

class BodyMediumText extends StatelessWidget {
  const BodyMediumText({
    required this.text,
    this.textAlign = TextAlign.left,
    this.color = darkColor,
    super.key,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: color),
    );
  }
}

class HeadlineSmallText extends StatelessWidget {
  const HeadlineSmallText({
    required this.text,
    this.textAlign = TextAlign.left,
    this.color = darkColor,
    super.key,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: color),
    );
  }
}

class HeadlineLargeText extends StatelessWidget {
  const HeadlineLargeText({
    required this.text,
    this.textAlign = TextAlign.left,
    this.color = lightColor,
    super.key,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: color),
    );
  }
}
