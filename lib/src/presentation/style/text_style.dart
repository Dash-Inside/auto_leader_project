import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:flutter/material.dart';

/// Get Title Text Style with given [context].
/// Color can be specified with [color] field.
TextStyle getBoldTextStyle(
  BuildContext context, {
  Color? color,
}) {
  final Color defaultColor = getOnBackgroundColor(context);

  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 48.0,
    fontWeight: FontWeight.w300,
    fontFamily: 'Nunito',
  );
}

/// Get Title Text Style with given [context].
/// Color can be specified with [color] field.
TextStyle getTitleTextStyle(
  BuildContext context, {
  Color? color,
}) {
  final Color defaultColor = getOnBackgroundColor(context);

  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 36.0,
    fontWeight: FontWeight.w700,
    fontFamily: 'Nunito',
  );
}

/// Get Title Text Style with given [context].
/// Color can be specified with [color] field.
TextStyle getSubtitleTextStyle(
  BuildContext context, {
  Color? color,
}) {
  final Color defaultColor = getOnBackgroundColor(context);

  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 32.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Nunito',
  );
}

/// Get Title Text Style with given [context].
/// Color can be specified with [color] field.
TextStyle getRegularTextStyle(
  BuildContext context, {
  Color? color,
}) {
  final Color defaultColor = getOnBackgroundColor(context);

  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Nunito',
  );
}

/// Get Title Text Style with given [context].
/// Color can be specified with [color] field.
TextStyle getLightTextStyle(
  BuildContext context, {
  Color? color,
}) {
  final Color defaultColor = getOnBackgroundColor(context);

  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 20.0,
    fontWeight: FontWeight.w300,
    fontFamily: 'Nunito',
  );
}
