import 'package:auto_leader_project/src/presentation/widgets/custom_toggle_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Sections nav panel.
class NavigationBarView extends StatelessWidget {
  /// Returns an instance of [NavigationBarView].
  static const double svgSize = 48.0;
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final Color onBackground = Theme.of(context).colorScheme.onBackground;
    final TextStyle title = Theme.of(context).textTheme.titleMedium!;
    return Scaffold(
      //убрать нахуй
      body: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/logo.svg',
            height: svgSize,
            width: svgSize,
          ),
          const SizedBox(
            width: 32.0,
          ),
          Text(
            'АвтоЛидер',
            style: title.copyWith(color: onBackground),
          ),
          const Spacer(),
          const CustomToggleButton(),
        ],
      ),
    );
  }
}
