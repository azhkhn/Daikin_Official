// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../../Constants/global.dart';
import '../../../../Constants/messages.dart';
import '../../../../helpers/location_setter.dart';
import '../../../Profile/webview_page.dart';
import '../../scoped.dart';


class ImageCapture extends StatefulWidget {
  const ImageCapture({Key? key}) : super(key: key);

  @override
  State<ImageCapture> createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {

  void _handleURLButtonPress(BuildContext context, String url, String title) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewPage(url, title)));
  }
  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: StateInherited.of(context).destination_reached,
        builder: (context, bool destReach, Widget? child) {
          return GestureDetector(
            onTap: () async {
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
                print('First status: $attendanceStatus');
                print('Regularize Status: $attendanceStatus');
                if(attendanceStatus == 'Y'){
                  if((tempnoteresult == 'N' || tempnoteresult == 'Present') && destReach == true){
                    setState(() {
                      listeners.panelitem.setremark = false;
                      listeners.panelitem.setcapture = true;
                    },);
                    sheetcontroller.jumpTo(1);
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }if(attendanceStatus == 'N'){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    margin:EdgeInsets.only(bottom: 50),
                    content: Text('Regularize your attendance first!'),
                    duration: Duration(microseconds: 500000),
                  ));
                  _handleURLButtonPress(context, 'https://web.multiplier.co.in/dkffts/dkfftsapp_attendancesummary.action?userid=${loginglobaldata.first.loginId}&preflag=Y', 'Regularize Attendance');
                }
              } else {
                return jsonDecode(response.body);
              }
              },
            child: Column(
              children: [
                ColorFiltered(
                  colorFilter: destReach == true &&
                          (tempnoteresult == 'N' || tempnoteresult == 'Present')
                      ? const ColorFilter.mode(Colors.transparent, BlendMode.hardLight)
                      : const ColorFilter.mode(Color.fromARGB(255, 146, 124, 124), BlendMode.modulate),
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage("assets/immigration.png"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Attendence")
              ],
            ),
          );
        },
    );
  }
}
