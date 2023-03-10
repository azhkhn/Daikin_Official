// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Routing/named_routes.dart';
import '../helpers/user_state.dart';

Widget isExitDesired(context) {
  return AlertDialog(
    title: const Text('Daikin Force Field Management'),
    content: const Text('Are you sure you want to logout from Daikin Force Field Management?'),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('CANCEL'),
      ),
      TextButton(
        onPressed: () async {
          await UserSimplePreferences.setLoginState('Logged OUT');
          Navigator.of(context).pushNamedAndRemoveUntil(authenticationPageRoute, (route) => false);
        },
        child: const Text('CONFIRM'),
      ),
    ],
  );
}
