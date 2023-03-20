// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/global.dart';
import '../../helpers/location_setter.dart';


saveDealerLatLong(String remarks, String attendanceType, context) async {
  print("  'empId': ${loginglobaldata[0].loginId} ");
  print("  'dealerId': ${loginglobaldata[0].dealerId}");
  print("  'latitude': ${StateInherited.of(context).locationData!.latitude.toString()} ");
  print("  'longitude': ${StateInherited.of(context).locationData!.longitude.toString()} ");

  var response = await http.post(
    Uri.parse(
        'https://web.multiplier.co.in/dkffts/dkfftssr_savedealerlatlong.action'),
    body: {
      'empId'           : loginglobaldata[0].loginId,
      'dealerId'        : loginglobaldata[0].dealerId,
      'latitude'        : StateInherited.of(context).locationData!.latitude.toString(),
      'longitude'       : StateInherited.of(context).locationData!.longitude.toString(),
    },
  );

  if (response.statusCode == 200) {
    print('response : ${response.body}');
    print(jsonDecode(response.body).runtimeType);
    return jsonDecode(response.body);
  } else {
    return jsonDecode(response.body);
  }
}
