import 'package:auto_leader_project/src/data/location_data.dart';
import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:flutter/material.dart';
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
        SfMaps(
          layers: [
            MapTileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              initialFocalLatLng: const MapLatLng(
                56.4006,
                38.7103,
              ),
              zoomPanBehavior: MapZoomPanBehavior(
                maxZoomLevel: 20,
                // enableMouseWheelZooming: true,
                enableDoubleTapZooming: true,
              ),
              initialZoomLevel: 15,
              initialMarkersCount: 2,
              markerBuilder: (BuildContext context, int index) {
                return MapMarker(
                  latitude: dataOfLocations[index].latitude,
                  longitude: dataOfLocations[index].longitude,
                  child: const Icon(
                    Icons.location_pin,
                    color: Colors.red,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
