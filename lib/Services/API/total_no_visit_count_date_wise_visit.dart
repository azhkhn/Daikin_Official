// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/global.dart';

totalNoVisitCountDateWiseVisit(String remarks, String attendanceType, context) async {
  print("  'empId': ${loginglobaldata[0].loginId}");

  var response = await http.post(
    Uri.parse(
        'https://web.multiplier.co.in/dkffts/dkfftssr_listDatePJP.action'),
    body: {
      'empId': loginglobaldata[0].loginId,
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
