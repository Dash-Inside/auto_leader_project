import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

/// Section for displaying map and address.
class WeOnMapView extends StatelessWidget {
  /// Returns an instance of [WeOnMapView]
  const WeOnMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Мы на карте',
          style: getSubtitleTextStyle(context),
        ),
        const SizedBox(height: 32.0),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Наш адрес:',
                    style: getSubtitleTextStyle(
                      context,
                      color: getPrimaryColor(context),
                    ),
                  ),
                  Text(
                    'г. Александров, ул. Ленина, д. 13, корп. 5, офис 4',
                    style: getLightTextStyle(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Адрес автодрома:',
                    style: getSubtitleTextStyle(
                      context,
                      color: getPrimaryColor(context),
                    ),
                  ),
                  Text(
                    'г. Алескиндров, ул. Двориковское шоссе 15 (район Геологи)',
                    style: getLightTextStyle(context),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SfMaps(
          layers: [
            MapShapeLayer(
              source: MapShapeSource.asset(
                'json/map.json',
                shapeDataField: 'name',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
