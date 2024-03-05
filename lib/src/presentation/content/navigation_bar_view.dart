import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Sections nav panel.
class NavigationBarView extends StatelessWidget {
  /// Returns an instance of [NavigationBarView].
  const NavigationBarView({super.key});

  /// Height of App Bar for construct pages with correct sizes.
  static const double expandedAppBarHeight = 88.0;

  static const double _svgSize = 48.0;
  static const List<String> _viewSections = ['О Нас', 'Стоимость', 'Акции'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/logo.svg',
          height: _svgSize,
          width: _svgSize,
        ),
        const SizedBox(
          width: 32.0,
        ),
        Text(
          'АвтоЛидер',
          style: getTitleTextStyle(context),
        ),
        const Spacer(),
        // const CustomToggleButton(),
        Wrap(
          spacing: 32.0,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: _viewSections.map(
            (_) {
              return _HeaderButton(
                text: _,
                highlighted: _viewSections.first == _,
                onPressed: () {
                  debugPrint('$_ Pressed');
                },
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}

class _HeaderButton extends StatelessWidget {
  const _HeaderButton({
    required this.text,
    required this.highlighted,
    this.onPressed,
  });

  final String text;
  final bool highlighted;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    const BorderRadius radius = BorderRadius.all(Radius.circular(8));

    final BoxDecoration defaultDecoratedBox = BoxDecoration(
      color: getBackgroundColor(context),
      borderRadius: radius,
    );

    final BoxDecoration highlightedDecoratedBox = BoxDecoration(
      color: getPrimaryColor(context),
      borderRadius: radius,
    );

    return InkWell(
      onTap: onPressed,
      borderRadius: radius,
      child: Container(
        padding: highlighted ? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0) : null,
        decoration: highlighted ? highlightedDecoratedBox : defaultDecoratedBox,
        child: Text(
          text,
          style: getLightTextStyle(
            context,
            color: highlighted ? getBackgroundColor(context) : getOnBackgroundColor(context),
          ),
        ),
      ),
    );
  }
}
