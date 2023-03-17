
class LocationDataDestination {

  final String? latitude;
  final String? longitude;
  final String status;

  const LocationDataDestination({
    this.latitude,
    this.longitude,
    required this.status
  });

  factory LocationDataDestination.fromJson(Map<String, dynamic> json) {
    return LocationDataDestination(
      latitude: json['LATITUDE']==""?"0":json['LATITUDE'],
      longitude: json['LONGITUDE']==""?"0":json['LONGITUDE'],
      status: json['STATUS']=="N"?"Y":"Y"
    );
  }
}
