import 'package:auto_leader_project/src/data/location_data.dart';
import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

/// Section for displaying map and address.
class WeOnMapView extends StatelessWidget {
  /// Returns an instance of [WeOnMapView]
  const WeOnMapView({super.key});

  /// Height of SizedBox for the map.
  static const double sizedBoxHeight = 600.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Мы на карте',
          style: getSubtitleTextStyle(context),
        ),
        const SizedBox(height: 32.0),
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(32.0)),
              child: SizedBox(
                height: sizedBoxHeight,
                child: SfMaps(
                  layers: [
                    MapTileLayer(
                      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      initialFocalLatLng: const MapLatLng(
                        56.4006,
                        38.7103,
                      ),
                      zoomPanBehavior: MapZoomPanBehavior(
                        maxZoomLevel: 20,
                        zoomLevel: 15.5,
                        // enableMouseWheelZooming: true,
                        enableDoubleTapZooming: true,
                      ),
                      initialMarkersCount: 2,
                      markerBuilder: (BuildContext context, int index) {
                        return MapMarker(
                          latitude: dataOfLocations[index].latitude,
                          longitude: dataOfLocations[index].longitude,
                          child: const Icon(
                            Icons.location_pin,
                            size: 48.0,
                            color: Colors.red,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80.0,
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(40.0),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: getPrimaryColor(context),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Наш адрес:',
                            style: getRegularTextStyle(context, color: Colors.white),
                          ),
                          Text(
                            'г. Александров, ул. Ленина, д. 13, корп. 5, офис 4',
                            style: getLightTextStyle(context, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Адрес автодрома:',
                            style: getRegularTextStyle(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
