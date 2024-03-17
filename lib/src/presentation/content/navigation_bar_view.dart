import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:auto_leader_project/src/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

/// Sections nav panel.
class NavigationBarView extends StatelessWidget {
  /// Returns an instance of [NavigationBarView].
  const NavigationBarView({super.key});

  /// Height of App Bar for construct pages with correct sizes.
  static const double expandedAppBarHeight = 88.0;

  // static const double _svgSize = 48.0;
  static const List<String> _viewSections = ['О Нас', 'Стоимость', 'Акции', 'Расписание', 'Мы на карте'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SvgPicture.asset(
        //   'assets/icons/logo.svg',
        //   height: _svgSize,
        //   width: _svgSize,
        // ),
        // const SizedBox(
        //   width: 32.0,
        // ),
        Text(
          'АвтоЛидер',
          style: getTitleTextStyle(context),
        ),
        const Spacer(),
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
        const SizedBox(width: 32.0),
        const ButtonWidget(text: 'Записаться'),
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
