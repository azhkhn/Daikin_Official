import 'package:flutter/material.dart';
import '../../Constants/global.dart';
import 'data_view.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
        body: (loginglobaldata.isEmpty || dashboardglobaldata.isEmpty)
            ? const Padding(
            padding: EdgeInsets.all(12),
            child: DataView())
            : const Padding(
                padding: EdgeInsets.all(12),
                child: DataView()
              ),
      );}
}
