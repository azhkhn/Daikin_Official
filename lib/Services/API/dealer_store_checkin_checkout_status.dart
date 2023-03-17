// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/global.dart';

dealerStoreCheckInCheckOutStatus(String remarks, String attendanceType, context) async {
  print("  'empId': ${loginglobaldata[0].loginId}");
  print("  'dealerId': ${loginglobaldata[0].dealerId}");

  var response = await http.post(
    Uri.parse(
        'https://web.multiplier.co.in/dkffts/dkfftssr_listcheckinout.action'),
    body: {
      'empId': loginglobaldata[0].loginId,
      'dealerId':loginglobaldata[0].dealerId
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
