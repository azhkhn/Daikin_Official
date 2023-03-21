// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../Constants/global.dart';
import '../../helpers/location_setter.dart';

saveattendencetoday(String remarks, String attendanceType, context) async {
  var pref = await SharedPreferences.getInstance();
  String? regularizeStatus = pref.getString('attendanceStatus');
  var response = await http.post(
    Uri.parse(
        'https://web.multiplier.co.in/dkffts/dkfftssr_saveAttendance.action'),
    body: {
      'empId': loginglobaldata[0].loginId,
      'appId': loginglobaldata[0].appId,
      'branchId': loginglobaldata[0].branchId,
      'fnImg': '1.txt',
      'latitude': StateInherited.of(context).locationData!.latitude.toString(),
      'longitude':
          StateInherited.of(context).locationData!.longitude.toString(),
      'remarks': remarks,
      'attendanceType': attendanceType,
      'dealerId': loginglobaldata[0].dealerId,
      'tlId': loginglobaldata[0].tlId,
    },
  );

  if (regularizeStatus == 'Y') {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return jsonDecode(response.body);
    }
  }else{
  }
}
