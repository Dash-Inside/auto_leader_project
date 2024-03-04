import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Section for displaying short info about driving school.
class AboutUsView extends StatelessWidget {
  /// Returns an instance of [AboutUsView]
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    final Color onBackground = Theme.of(context).colorScheme.onBackground;
    final Color primary = Theme.of(context).colorScheme.primary;
    final TextStyle bodyMedium = Theme.of(context).textTheme.bodyMedium!;
    final TextStyle display = Theme.of(context).textTheme.displayMedium!;

    return Scaffold(
      //убрать нахуй
      body: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'г. Александров',
                  style: bodyMedium.copyWith(color: onBackground),
                ),
                Text(
                  'Автошкола',
                  style: display.copyWith(color: primary),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Text(
                  'data' * 10,
                  style: bodyMedium.copyWith(color: onBackground),
                ),
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset('assets/icons/logo.svg'),
          ),
        ],
      ),
    );
  }
}
