// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/global.dart';

saveTotalCustomerWalkins () async {
  var response = await http.post(
    Uri.parse(
        'https://web.multiplier.co.in/dkffts/dkfftssr_saveCustomerdetails.action?'),
    body: {
      'empId': loginglobaldata[0].loginId,
      'appId': loginglobaldata[0].appId,
      'branchId': loginglobaldata[0].branchId,
      'totalWalkin':'2',
      'attended': '2',
      'preflag': 'Y'
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
