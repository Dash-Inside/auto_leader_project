import 'package:auto_leader_project/core/screen_layout.dart';
import 'package:auto_leader_project/src/presentation/content/navigation_bar_view.dart';
import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Section for displaying short info about driving school.
class AboutUsView extends StatelessWidget {
  /// Returns an instance of [AboutUsView]
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height - NavigationBarView.expandedAppBarHeight;

    return SizedBox(
      height: height,
      child: ScreenLayout(
        mobile: (context) {
          return const _InfoWidget();
        },
        desktop: (context) {
          return Row(
            children: [
              const Expanded(
                child: _InfoWidget(),
              ),
              const SizedBox(
                width: 32.0,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: 350,
                  height: 350,
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'г. Александров',
          style: getRegularTextStyle(context),
        ),
        Text(
          'Автошкола',
          style: getBoldTextStyle(
            context,
            color: getPrimaryColor(context),
          ),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Text(
          'Квалифицированныe и опытныe инструктора, которые могут предоставить студентам высококачественное обучение вождению',
          style: getRegularTextStyle(context),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Text(
          '8 (910) 888 88-88',
          style: getSubtitleTextStyle(context),
        ),
      ],
    );
  }
}
