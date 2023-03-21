// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/global.dart';

listDealerDateWiseVisit() async {

  var response = await http.post(
    Uri.parse(
        'https://web.multiplier.co.in/dkffts/dkfftssr_listDealerPJP.action?empId=10003&date=07022023'),
    body: {
      'empId': loginglobaldata[0].loginId,
      'date':DateTime.now()
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
