import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Constants/constants.dart';
import '../../Constants/global.dart';
import '../../Widgets/custom_waiting_screen.dart';
import '../../helpers/location_setter.dart';
import '../../model/APISchemas/location.dart';
import '../Pages/Attendence/scoped.dart';
import '../Pages/Panel/helpers.dart';

class SmallMap extends StatefulWidget {
  const SmallMap({Key? key, required this.destlocation}) : super(key: key);
  final LocationDataDestination? destlocation;
  @override
  State<SmallMap> createState() => _SmallMapState();
}

class _SmallMapState extends State<SmallMap> {
  final Completer<GoogleMapController> _controller = Completer();
  late final List<Placemark> locationAddress;
  // ignore: non_constant_identifier_names
  Placemark? location_address_exact;
  late List<Marker> _updatedpos = [];
  String _address = "";

  @override
  void didChangeDependencies() {
    getaddress();
    refreshlocation();
    _destination(
        LatLng(StateInherited.of(context).locationData!.latitude!,
            StateInherited.of(context).locationData!.longitude!),
        destination_latlng,
        diamemter_km);
    super.didChangeDependencies();
  }

  getaddress() async {
    List<Placemark> locationAddress =
    await placemarkFromCoordinates(
        StateInherited.of(context).locationData!.latitude!,
        StateInherited.of(context).locationData!.longitude! );

    location_address_exact = locationAddress.first;
    String? name = location_address_exact!.name;
    String? subLocality = location_address_exact!.subLocality;
    String? locality = location_address_exact!.locality;
    String? administrativeArea = location_address_exact!.administrativeArea;
    String? postalCode = location_address_exact!.postalCode;
    String? country = location_address_exact!.country;
    String address =
        "$name, $subLocality, $locality, $administrativeArea $postalCode, $country";

    if (kDebugMode) {
      print(address);
    }

    setState(() {
      _address = address; // update _address
    });
    return address;
  }

  @override
  void dispose() {
    _controller;
    _updatedpos;
    super.dispose();
  }

  void refreshlocation() {
    _updatedpos = [];
    _updatedpos.add(Marker(
        markerId: MarkerId(StateInherited.of(context).locationData.toString()),
        position: LatLng(StateInherited.of(context).locationData!.latitude!,
            StateInherited.of(context).locationData!.longitude!),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)));
  }

  @override
  Widget build(BuildContext context) {
    return (widget.destlocation != null || widget.destlocation?.status != 'N')
        ? Scaffold(
            body: Container(
              decoration: const BoxDecoration(color: Colors.white),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SafeArea(
                child: Container(
                  color: Colors.white.withOpacity(.8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          height: MediaQuery.of(context).size.height / 2.5,
                          width: MediaQuery.of(context).size.width,
                          child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: CameraPosition(
                                target: LatLng(
                                    StateInherited.of(context)
                                        .locationData!
                                        .latitude!,
                                    StateInherited.of(context)
                                        .locationData!
                                        .longitude!),
                                zoom: 16),
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                            markers: Set.from(_updatedpos),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Location: $_address",
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Dealer ID: ${loginglobaldata.first.dealerId}",
                          style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Dealer Name: ${dashboardglobaldata.first.dealername}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dealer Address: ${dashboardglobaldata.first.dealeraddress}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () async{
                                  String url =
                                  'https://web.multiplier.co.in/dkffts/dkfftsapp_storevisit.action?userid=${loginglobaldata.first.loginId}&latitude=0.0&longitude=0.0&dealerId=10001';
                                  await launchUrl(
                                  Uri.parse(url),
                                  );
                                },
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.blue)),
                                child: const Text(
                                  'CHECK IN',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.grey)),
                                child: const Text(
                                  'CHECK OUT',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        : customcontainer();
  }

  _destination(LatLng dragEndPosition, LatLng kLake, km) {
    km = km / 1000;
    var ky = 40000 / 360;
    var kx = math.cos(math.pi * kLake.latitude / 180.0) * ky;
    var dx = (kLake.longitude - dragEndPosition.longitude) * kx;
    var dy = (kLake.latitude - dragEndPosition.latitude) * ky;
    setState(() {
      math.sqrt(dx * dx + dy * dy) <= km
          ? {
              listeners.setlisteners = ValueNotifier(true),
            }
          : {
              listeners.setlisteners = ValueNotifier(false),
            };
    });
  }
}
