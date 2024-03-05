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
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
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
      ),
    );
  }
}
