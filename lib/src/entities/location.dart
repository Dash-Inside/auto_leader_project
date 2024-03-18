/// Entity for displaying markers at map.
class Location {
  /// Returns an instance of [Location]
  const Location(
    this.place,
    this.latitude,
    this.longitude,
  );

  /// Place
  final String place;

  /// X coordinate
  final double latitude;

  /// Y coordinate
  final double longitude;
}
