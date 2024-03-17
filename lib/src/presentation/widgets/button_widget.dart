import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:flutter/material.dart';

/// Widget for displaying red button.
class ButtonWidget extends StatelessWidget {
  /// Returns an instance of [ButtonWidget].
  const ButtonWidget({
    required this.text,
    this.onPressed,
    this.isInCard = false,
    super.key,
  });

  /// Text inside the button.
  final String text;

  /// Function inside the button.
  final VoidCallback? onPressed;

  /// Size of button.
  final bool isInCard;

  @override
  Widget build(BuildContext context) {
    const BorderRadius radius = BorderRadius.all(Radius.circular(32.0));

    const EdgeInsets smallPadding = EdgeInsets.symmetric(
      horizontal: 32.0,
      vertical: 8.0,
    );

    const EdgeInsets bigPadding = EdgeInsets.symmetric(
      horizontal: 80.0,
      vertical: 10.0,
    );

    final TextStyle lightTextStyle = getLightTextStyle(
      context,
      color: getBackgroundColor(context),
    );

    final TextStyle subtitleTextStyle = getSubtitleTextStyle(
      context,
      color: getBackgroundColor(context),
    );

    return InkWell(
      onTap: onPressed,
      borderRadius: radius,
      child: Container(
        padding: isInCard ? bigPadding : smallPadding,
        decoration: BoxDecoration(
          color: getPrimaryColor(context),
          borderRadius: radius,
        ),
        child: Text(
          text,
          style: isInCard ? subtitleTextStyle : lightTextStyle,
        ),
      ),
    );
  }
}
