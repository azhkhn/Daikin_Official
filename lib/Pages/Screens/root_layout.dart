// ignore_for_file: avoid_print, unused_import

import 'package:daikin/Pages/Report/report.dart';
import 'package:daikin/Widgets/buidnavbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info/package_info.dart';
import '../../Routing/named_routes.dart';
import '../../Routing/router.dart';
import '../../Constants/global.dart';
import '../../Widgets/BottomBar/Components/button_attendence.dart';
import '../../Widgets/BottomBar/Components/button_logout.dart';
import '../../Widgets/BottomBar/Components/store_visit.dart';
import '../Screen4/page4.dart';

@immutable
class SetupFlow extends StatefulWidget {
  static SetupFlowState of(BuildContext context) {
    return context.findAncestorStateOfType<SetupFlowState>()!;
  }

  const SetupFlow({
    super.key,
    required this.setupPageRoute,
  });

  final String setupPageRoute;

  @override
  SetupFlowState createState() => SetupFlowState();
}

class SetupFlowState extends State<SetupFlow> {
  final navigatorKey = GlobalKey<NavigatorState>();

  String _titlevalue = profilePageDisplayName;

  String get gettitlevalue => _titlevalue;

  set settitlevalue(String value) {
    _titlevalue = value;
  }

  @override
  void didChangeDependencies() {
    gettitlevalue;
    super.didChangeDependencies();
  }

  PackageInfo? packageInfo;
  @override
  void initState() {
    super.initState();
    getPackage();
  }

  void getPackage() async {
    packageInfo = await PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(gettitlevalue),
      ),
      body: Navigator(
        key: navigatorKey,
        initialRoute: widget.setupPageRoute,
        onGenerateRoute: onGenerateRoute,
      ),
      drawer: buildMyNavBar(),
    );
  }

  buildMyNavBar() {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.white,
              height: 205.0,
              child: DrawerHeader(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage('assets/four_digit_new.png'),height: 25,),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text('USER ID: ${loginglobaldata.first.loginId}',
                          style: const TextStyle(color: Colors.black)),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Designation: ${loginglobaldata.first.appId == "1" ? "ISD" : loginglobaldata.first.appId == "2" ? "Team Leader" : loginglobaldata.first.appId == "3" ? "RSO" : loginglobaldata.first.appId == "4" ? "DSP ISD" : loginglobaldata.first.appId == "5" ? "MIS" : dashboardglobaldata.first.designation}',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Card(
                      color: Colors.blue,
                      elevation: 6.0,
                      child: ButtonAttendence(),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: Card(
                        color: Colors.blue,
                        elevation: 6.0,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Get.to(()=>const ReportPage());
                          },
                          child: Column(
                            children: const [
                              Image(
                                  image:
                                      AssetImage('assets/reports_drawer.png'),
                                  height: 85),
                              Text(
                                'Reports',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              )
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.blue,
                      elevation: 6.0,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              settitlevalue = profilePageDisplayName;
                            });
                            Navigator.pop(context);
                            Get.to(()=>const Page4());
                          },
                          child: Column(
                            children: const [
                              Image(
                                  image:
                                      AssetImage('assets/profile_drawer.png'),
                                  height: 85),
                              Text('Profile',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0))
                            ],
                          ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  const Expanded(
                    child: Card(
                      color: Colors.blue,
                      elevation: 6.0,
                      child: ButtonLogout(),
                    ),
                  ),
                ],
              ),
            ),
            (loginglobaldata.first.appId == "2")
                ? Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Card(
                            color: Colors.blue,
                            elevation: 6.0,
                            child: StoreVisit(),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/white.png'),
                                height: 120.0),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Image(
                              image: AssetImage('assets/white.png'),
                              height: 120.0),
                        ),
                        const SizedBox(width: 5.0),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/white.png'),
                                height: 120.0),
                          ),
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 120.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blue)),
                  onPressed: () {},
                  child: FutureBuilder<PackageInfo>(
                    future: PackageInfo.fromPlatform(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.done:
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Version: ${snapshot.data!.version.replaceRange(3, 5, '')}',
                            ),
                          );
                        default:
                          return const SizedBox();
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
