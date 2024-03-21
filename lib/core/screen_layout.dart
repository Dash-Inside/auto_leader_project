// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_layout.freezed.dart';

@freezed
class ScreenType with _$ScreenType {
  const factory ScreenType.mobile() = MobileScreenType;
  const factory ScreenType.laptop() = LaptopScreenType;
  const factory ScreenType.desktop() = DesktopScreenType;
}

class ScreenLayout extends StatelessWidget {
  const ScreenLayout({
    required this.mobile,
    required this.laptop,
    required this.desktop,
    super.key,
  });

  final Widget Function(BuildContext context) mobile;
  final Widget Function(BuildContext context) laptop;
  final Widget Function(BuildContext context) desktop;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    late final ScreenType type;

    if (size.width < 600) {
      type = const ScreenType.mobile();
    } else if (size.width < 1200) {
      type = const ScreenType.laptop();
    } else {
      type = const ScreenType.desktop();
    }

    return type.map(
      mobile: (_) => mobile.call(context),
      laptop: (_) => laptop.call(context),
      desktop: (_) => desktop.call(context),
    );
  }
}
