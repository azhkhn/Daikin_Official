// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../Constants/global.dart';

Future<String>attendanceRegularizeStatus() async {
  var response = await http.post(
    Uri.parse(
        'https://web.multiplier.co.in/dkffts/dkfftssr_findpreviousdayattd.action'),
    body: {
      'empId': loginglobaldata.first.loginId,
    },
  );
  var jsonResponse;
  if (response.statusCode == 200) {
    jsonResponse = json.decode(response.body);
    String attendanceStatus = jsonResponse['STATUS'];
    SharedPreferences pref= await SharedPreferences.getInstance();
    pref.setString('status', attendanceStatus);
    print('First status: $attendanceStatus');
    return jsonDecode(response.body);
  } else {
    return jsonDecode(response.body);
  }
}