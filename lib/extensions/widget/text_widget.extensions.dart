import 'package:flutter/material.dart';

extension TextWidgetExtensions on String {
  Text text() {
    return Text(
      this,
    );
  }
}

extension TextExtensions on Text {
  Text hl(BuildContext context,
          {Key? key,
          TextAlign? textAlign,
          int? maxLines,
          TextOverflow? overflow}) =>
      Text(
        data ?? '',
        key: key,
        style: Theme.of(context).textTheme.headlineLarge,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );

  Text hm(BuildContext context,
          {Key? key,
          TextAlign? textAlign,
          int? maxLines,
          TextOverflow? overflow}) =>
      Text(
        data ?? '',
        key: key,
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );

  Text hs(BuildContext context,
          {Key? key,
          TextAlign? textAlign,
          int? maxLines,
          TextOverflow? overflow}) =>
      Text(
        data ?? '',
        key: key,
        style: Theme.of(context).textTheme.headlineSmall,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );

  Text bl(BuildContext context,
          {Key? key,
          TextAlign? textAlign,
          int? maxLines,
          TextOverflow? overflow}) =>
      Text(
        data ?? '',
        key: key,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );

  Text bm(BuildContext context,
          {Key? key,
          TextAlign? textAlign,
          int? maxLines,
          TextOverflow? overflow}) =>
      Text(
        data ?? '',
        key: key,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );

  Text bs(BuildContext context,
          {Key? key,
          TextAlign? textAlign,
          int? maxLines,
          TextOverflow? overflow}) =>
      Text(
        data ?? '',
        key: key,
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );
}
