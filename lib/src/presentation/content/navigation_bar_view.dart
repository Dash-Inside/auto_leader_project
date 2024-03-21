import 'package:auto_leader_project/core/screen_layout.dart';
import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:auto_leader_project/src/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Sections nav panel.
class NavigationBarView extends StatelessWidget {
  /// Returns an instance of [NavigationBarView].
  const NavigationBarView({super.key});

  /// Height of App Bar for construct pages with correct sizes.
  static const double expandedAppBarHeight = 88.0;

  static const double _svgSize = 48.0;
  static const List<String> _viewSections = [
    'О Нас',
    'Стоимость',
    'Акции',
    'Расписание',
    'Мы на карте',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MultiSelectedScreenLayout(
          type: const [
            ScreenType.mobile(),
            ScreenType.laptop(),
          ],
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                height: _svgSize,
                width: _svgSize,
              ),
            );
          },
        ),
        Text(
          'АвтоЛидер',
          style: getTitleTextStyle(context),
        ),
        const Spacer(),
        ScreenLayout(
          mobile: (context) {
            return const Icon(Icons.menu_rounded);
          },
          laptop: (context) {
            return const Row(
              children: [
                ButtonWidget(text: 'Записаться'),
                SizedBox(width: 16.0),
                Icon(Icons.menu_rounded),
              ],
            );
          },
          desktop: (context) {
            return Row(
              children: [
                ..._viewSections.map(
                  (title) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: _HeaderButton(
                        text: title,
                        highlighted: _viewSections.first == title,
                        onPressed: () {
                          debugPrint('$title Pressed');
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(width: 16.0),
                const ButtonWidget(text: 'Записаться'),
              ],
            );
          },
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
    final BoxDecoration defaultDecoratedBox = BoxDecoration(
      border: Border(bottom: BorderSide(color: getBackgroundColor(context))),
    );

    final BoxDecoration highlightedDecoratedBox = BoxDecoration(
      border: Border(bottom: BorderSide(color: getPrimaryColor(context), width: 1.3)),
    );

    final TextStyle defaultTextStyle = getLightTextStyle(
      context,
      color: getOnBackgroundColor(context),
    );

    final TextStyle highlightedTextStyle = getRegularTextStyle(
      context,
      color: getOnBackgroundColor(context),
    );

    return InkWell(
      hoverColor: Colors.transparent,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      onTap: onPressed,
      child: Container(
        padding: highlighted ? const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0) : null,
        decoration: highlighted ? highlightedDecoratedBox : defaultDecoratedBox,
        child: Text(
          text,
          style: highlighted ? highlightedTextStyle : defaultTextStyle,
        ),
      ),
    );
  }
}
