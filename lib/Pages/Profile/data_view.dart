import 'package:daikin/Pages/Attendence/attendence.dart';
import 'package:daikin/Pages/Profile/webview_page.dart';
import 'package:daikin/Widgets/outlet_recyclerview.dart';
import 'package:daikin/Widgets/recycler_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/global.dart';

class DataView extends StatelessWidget {
  const DataView({
    Key? key,
  }) : super(key: key);
  _handleURLButtonPress(BuildContext context, String url, String title) {
    Get.to(() => WebViewPage(url, title));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(color: Colors.white),
      itemCount: 1,
      itemBuilder: (BuildContext context, index) {
        return (dashboardglobaldata.first.status != null)
            ? Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      color: Colors.white,
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(text: "HELLO!"),
                                  const TextSpan(text: "  "),
                                  TextSpan(
                                    text: loginglobaldata.first.empName,
                                    style: const TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(text: "Designation"),
                                  const TextSpan(text: "    "),
                                  TextSpan(
                                    text: dashboardglobaldata.first.designation,
                                    style: const TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(text: "EmpId"),
                                  const TextSpan(text: "   "),
                                  TextSpan(
                                    text: loginglobaldata.first.loginId,
                                    style: const TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(text: "Branch Name"),
                                  const TextSpan(text: "    "),
                                  TextSpan(
                                    text: dashboardglobaldata.first.branchname
                                        .toString(),
                                    style: const TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      color: Colors.white,
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(text: "Dealer Id"),
                                  const TextSpan(text: "   "),
                                  TextSpan(
                                    text: loginglobaldata.first.dealerId,
                                    style: const TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(text: "Dealer Name"),
                                  const TextSpan(text: "        "),
                                  TextSpan(
                                    text: dashboardglobaldata.first.dealername,
                                    style: const TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(text: "Dealer Address"),
                                  const TextSpan(text: "     "),
                                  TextSpan(
                                    text:
                                        dashboardglobaldata.first.dealeraddress,
                                    style: const TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      color: Colors.white,
                      elevation: 6,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(6.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Notice Boards',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(0),
                            color: Colors.blue,
                            elevation: 6,
                            child: TextButton(
                              onPressed: () {
                                Get.to(() => const RecyclerViewData());
                              },
                              child: Container(
                                padding: EdgeInsets.zero,
                                child: Column(
                                  children: const [
                                    Image(
                                        image: AssetImage(
                                            'assets/attendance_blank.png'),
                                        height: 85),
                                    Text(
                                      'Attendance',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(0),
                            color: Colors.blue,
                            elevation: 6,
                            child: TextButton(
                              onPressed: () {
                                Get.to(() => const OutLetRecyclerView());
                              },
                              child: Container(
                                padding: EdgeInsets.zero,
                                child: Column(
                                  children: const [
                                    Image(
                                        image: AssetImage('assets/visit.png'),
                                        height: 85),
                                    Text(
                                      'Visit',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : loginglobaldata.first.appId == '1'
                ? Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          margin: const EdgeInsets.all(0),
                          color: Colors.white,
                          elevation: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(text: "HELLO!"),
                                      const TextSpan(text: "   "),
                                      TextSpan(
                                        text: loginglobaldata.first.empName,
                                        style: const TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(text: "Designation"),
                                      const TextSpan(text: "     "),
                                      TextSpan(
                                        text: dashboardglobaldata
                                            .first.designation,
                                        style: const TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(text: "EmpId"),
                                      const TextSpan(text: "     "),
                                      TextSpan(
                                        text: loginglobaldata.first.loginId,
                                        style: const TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: "Branch Name"),
                                      TextSpan(text: "     "),
                                      TextSpan(
                                        text: "Delhi",
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          margin: const EdgeInsets.all(0),
                          color: Colors.white,
                          elevation: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(text: "Dealer Id"),
                                      const TextSpan(text: "     "),
                                      TextSpan(
                                        text: loginglobaldata.first.dealerId,
                                        style: const TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(text: "Dealer Name"),
                                      const TextSpan(text: "     "),
                                      TextSpan(
                                        text: dashboardglobaldata
                                            .first.dealername,
                                        style: const TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(text: "Dealer Address"),
                                      const TextSpan(text: "     "),
                                      TextSpan(
                                        text: dashboardglobaldata
                                            .first.dealeraddress,
                                        style: const TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          margin: const EdgeInsets.all(0),
                          color: Colors.white,
                          elevation: 6,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(6.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: 'Notice Boards',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(0),
                                color: Colors.blue,
                                elevation: 6,
                                child: TextButton(
                                  onPressed: () {
                                    Get.to(() => const AttendencePage());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      children: const [
                                        Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        ),
                                        Image(
                                            image: AssetImage(
                                                'assets/attendance_blank.png'),
                                            height: 85),
                                        Text(
                                          'Attendance',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(0),
                                color: Colors.blue,
                                elevation: 6,
                                child: TextButton(
                                  onPressed: () async {
                                    _handleURLButtonPress(
                                        context,
                                        'https://web.multiplier.co.in/dkffts/dkfftsapp_sales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                        "Sales Punch");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      children: const [
                                        Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        ),
                                        Image(
                                            image: AssetImage(
                                                'assets/sales_blank.png'),
                                            height: 85),
                                        Text(
                                          'Sales Punch',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(0),
                                color: Colors.blue,
                                elevation: 6,
                                child: TextButton(
                                  onPressed: () async {
                                    _handleURLButtonPress(
                                        context,
                                        'https://web.multiplier.co.in/dkffts/dkfftsapp_attendancesummary.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                        "Attendance Summary");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      children: const [
                                        Image(
                                            image: AssetImage(
                                                'assets/attendance_summary.png'),
                                            height: 85),
                                        Text(
                                          'Attendance',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                        Text(
                                          'Summary',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(0),
                                color: Colors.blue,
                                elevation: 6,
                                child: TextButton(
                                  onPressed: () async {
                                    _handleURLButtonPress(
                                        context,
                                        'https://web.multiplier.co.in/dkffts/dkfftsapp_viewsales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                        "My Sales Summary");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      children: const [
                                        Image(
                                            image: AssetImage(
                                                'assets/sales_summary.png'),
                                            height: 85),
                                        Text(
                                          'Sales',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                        Text(
                                          'Summary',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(0),
                                color: Colors.blue,
                                elevation: 6,
                                child: TextButton(
                                  onPressed: () async {
                                    _handleURLButtonPress(
                                        context,
                                        'https://web.multiplier.co.in/dkffts/dkfftsapp_targetachievement.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                        "Target Vs Achievement");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      children: const [
                                        Image(
                                            image: AssetImage(
                                                'assets/achievement.png'),
                                            height: 85),
                                        Text(
                                          'Target',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                        Text(
                                          'Vs Achievement',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(0),
                                color: Colors.white,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      children: const [
                                        Image(
                                            image:
                                                AssetImage('assets/white.png'),
                                            height: 85),
                                        Text(
                                          'Sales',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                        Text(
                                          'Summary',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : loginglobaldata.first.appId == "2"
                    ? Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: Colors.white,
                              elevation: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        children: <TextSpan>[
                                          const TextSpan(text: "HELLO!"),
                                          const TextSpan(text: "   "),
                                          TextSpan(
                                            text: loginglobaldata.first.empName,
                                            style:
                                                const TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    RichText(
                                      text: TextSpan(
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        children: <TextSpan>[
                                          const TextSpan(text: "Designation"),
                                          const TextSpan(text: "     "),
                                          TextSpan(
                                            text: loginglobaldata.first.appId ==
                                                    "1"
                                                ? "ISD"
                                                : loginglobaldata.first.appId ==
                                                        "2"
                                                    ? "TL"
                                                    : loginglobaldata
                                                                .first.appId ==
                                                            "3"
                                                        ? "RSO"
                                                        : loginglobaldata.first
                                                                    .appId ==
                                                                "4"
                                                            ? "DSP ISD"
                                                            : loginglobaldata
                                                                        .first
                                                                        .appId ==
                                                                    "5"
                                                                ? "MIS"
                                                                : dashboardglobaldata
                                                                    .first
                                                                    .designation,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    RichText(
                                      text: TextSpan(
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        children: <TextSpan>[
                                          const TextSpan(text: "EmpId"),
                                          const TextSpan(text: "     "),
                                          TextSpan(
                                            text: loginglobaldata.first.loginId,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(text: "Branch Name"),
                                          TextSpan(text: "     "),
                                          TextSpan(
                                            text: "Delhi",
                                            style: TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: Colors.white,
                              elevation: 6,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(6.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RichText(
                                        text: const TextSpan(
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black),
                                          children: [
                                            TextSpan(
                                              text: 'Notice Boards',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    margin: const EdgeInsets.all(0),
                                    color: Colors.blue,
                                    elevation: 6,
                                    child: TextButton(
                                      onPressed: () {
                                        Get.to(() => const AttendencePage());
                                      },
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          children: const [
                                            Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10.0),
                                            ),
                                            Image(
                                                image: AssetImage(
                                                    'assets/attendance_blank.png'),
                                                height: 85),
                                            Text(
                                              'Attendance',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                            Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: Card(
                                    margin: const EdgeInsets.all(0),
                                    color: Colors.blue,
                                    elevation: 6,
                                    child: TextButton(
                                      onPressed: () {
                                        Get.to(() => const RecyclerViewData());
                                      },
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          children: const [
                                            Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10.0),
                                            ),
                                            Image(
                                                image: AssetImage(
                                                    'assets/visit.png'),
                                                height: 85),
                                            Text(
                                              'Visit',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                            Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    margin: const EdgeInsets.all(0),
                                    color: Colors.blue,
                                    elevation: 6,
                                    child: TextButton(
                                      onPressed: () async {
                                        _handleURLButtonPress(
                                            context,
                                            'https://web.multiplier.co.in/dkffts/dkfftsapp_attendancesummary.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                            "Attendance Summary");
                                      },
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          children: const [
                                            Image(
                                                image: AssetImage(
                                                    'assets/attendance_summary.png'),
                                                height: 85),
                                            Text(
                                              'Attendance',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                            Text(
                                              'Summary',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: Card(
                                    margin: const EdgeInsets.all(0),
                                    color: Colors.blue,
                                    elevation: 6,
                                    child: TextButton(
                                      onPressed: () async {
                                        _handleURLButtonPress(
                                            context,
                                            'https://web.multiplier.co.in/dkffts/dkfftsapp_teamattendanceData.action?userid=${loginglobaldata.first.loginId}',
                                            "Team Attendance");
                                      },
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          children: const [
                                            Image(
                                                image: AssetImage(
                                                    'assets/attendance_drawer.png'),
                                                height: 85),
                                            Text(
                                              'Team Attendance',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                            Text(
                                              'Summary',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    margin: const EdgeInsets.all(0),
                                    color: Colors.blue,
                                    elevation: 6,
                                    child: TextButton(
                                      onPressed: () async {
                                        _handleURLButtonPress(
                                            context,
                                            'https://web.multiplier.co.in/dkffts/dkfftsapp_teamsalesData.action?userid=${loginglobaldata.first.loginId}',
                                            "Team Sales Summary");
                                      },
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          children: const [
                                            Image(
                                                image: AssetImage(
                                                    'assets/sales_summary.png'),
                                                height: 85),
                                            Text(
                                              'Team Sales',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                            Text(
                                              'Summary',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.all(0),
                                    color: Colors.white,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          children: const [
                                            Image(
                                                image: AssetImage(
                                                    'assets/white.png'),
                                                height: 85),
                                            Text(
                                              'Sales',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                            Text(
                                              'Summary',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : loginglobaldata.first.appId == "3"
                        ? Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Card(
                                  margin: const EdgeInsets.all(0),
                                  color: Colors.white,
                                  elevation: 6,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            children: <TextSpan>[
                                              const TextSpan(text: "HELLO!"),
                                              const TextSpan(text: "   "),
                                              TextSpan(
                                                text: loginglobaldata
                                                    .first.empName,
                                                style: const TextStyle(
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        RichText(
                                          text: TextSpan(
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                            children: <TextSpan>[
                                              const TextSpan(
                                                  text: "Designation"),
                                              const TextSpan(text: "     "),
                                              TextSpan(
                                                text: loginglobaldata
                                                            .first.appId ==
                                                        "1"
                                                    ? "ISD"
                                                    : loginglobaldata
                                                                .first.appId ==
                                                            "2"
                                                        ? "TL"
                                                        : loginglobaldata.first
                                                                    .appId ==
                                                                "3"
                                                            ? "RSO"
                                                            : loginglobaldata
                                                                        .first
                                                                        .appId ==
                                                                    "4"
                                                                ? "DSP ISD"
                                                                : loginglobaldata
                                                                            .first
                                                                            .appId ==
                                                                        "5"
                                                                    ? "MIS"
                                                                    : dashboardglobaldata
                                                                        .first
                                                                        .designation,
                                                style: const TextStyle(
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        RichText(
                                          text: TextSpan(
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                            children: <TextSpan>[
                                              const TextSpan(text: "EmpId"),
                                              const TextSpan(text: "     "),
                                              TextSpan(
                                                text: loginglobaldata
                                                    .first.loginId,
                                                style: const TextStyle(
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: "Branch Name"),
                                              TextSpan(text: "     "),
                                              TextSpan(
                                                text: "Delhi",
                                                style: TextStyle(fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Card(
                                  margin: const EdgeInsets.all(0),
                                  color: Colors.white,
                                  elevation: 6,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.all(6.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: RichText(
                                            text: const TextSpan(
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.black),
                                              children: [
                                                TextSpan(
                                                  text: 'Notice Boards',
                                                  style: TextStyle(
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Card(
                                        margin: const EdgeInsets.all(0),
                                        color: Colors.blue,
                                        elevation: 6,
                                        child: TextButton(
                                          onPressed: () {
                                            Get.to(
                                                () => const AttendencePage());
                                          },
                                          child: Container(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: const [
                                                Text(
                                                  '',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.0),
                                                ),
                                                Image(
                                                    image: AssetImage(
                                                        'assets/attendance_blank.png'),
                                                    height: 85),
                                                Text(
                                                  'Attendance',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                                Text(
                                                  '',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Expanded(
                                      child: Card(
                                        margin: const EdgeInsets.all(0),
                                        color: Colors.blue,
                                        elevation: 6,
                                        child: TextButton(
                                          onPressed: () async {
                                            _handleURLButtonPress(
                                                context,
                                                'https://web.multiplier.co.in/dkffts/dkfftsapp_sales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                "Attendance Summary");
                                          },
                                          child: Container(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: const [
                                                Image(
                                                    image: AssetImage(
                                                        'assets/attendance_summary.png'),
                                                    height: 85),
                                                Text(
                                                  'Attendance',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                                Text(
                                                  'Summary',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Card(
                                        margin: const EdgeInsets.all(0),
                                        color: Colors.blue,
                                        elevation: 6,
                                        child: TextButton(
                                          onPressed: () async {
                                            _handleURLButtonPress(
                                                context,
                                                'https://web.multiplier.co.in/dkffts/dkfftsapp_attendancesummary.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                "Team Attendance Summary");
                                          },
                                          child: Container(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: const [
                                                Image(
                                                    image: AssetImage(
                                                        'assets/attendance_drawer.png'),
                                                    height: 85),
                                                Text(
                                                  'Team Attendance',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                                Text(
                                                  'Summary',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Expanded(
                                      child: Card(
                                        margin: const EdgeInsets.all(0),
                                        color: Colors.blue,
                                        elevation: 6,
                                        child: TextButton(
                                          onPressed: () async {
                                            _handleURLButtonPress(
                                                context,
                                                'https://web.multiplier.co.in/dkffts/dkfftsapp_viewsales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                "Team Sales Summary");
                                          },
                                          child: Container(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: const [
                                                Image(
                                                    image: AssetImage(
                                                        'assets/sales_summary.png'),
                                                    height: 85),
                                                Text(
                                                  'Team Sales',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                                Text(
                                                  'Summary',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Card(
                                        margin: const EdgeInsets.all(0),
                                        color: Colors.blue,
                                        elevation: 6,
                                        child: TextButton(
                                          onPressed: () async {
                                            _handleURLButtonPress(
                                                context,
                                                'https://web.multiplier.co.in/dkffts/dkfftsapp_targetachievement.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                "Target Vs Achievement");
                                          },
                                          child: Container(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: const [
                                                Image(
                                                    image: AssetImage(
                                                        'assets/achievement.png'),
                                                    height: 85),
                                                Text(
                                                  'Target',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                                Text(
                                                  'Vs Achievement',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.all(0),
                                        color: Colors.white,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Container(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: const [
                                                Image(
                                                    image: AssetImage(
                                                        'assets/white.png'),
                                                    height: 85),
                                                Text(
                                                  'Sales',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                                Text(
                                                  'Summary',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : loginglobaldata.first.appId == "4"
                            ? Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Card(
                                      margin: const EdgeInsets.all(0),
                                      color: Colors.white,
                                      elevation: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                children: <TextSpan>[
                                                  const TextSpan(
                                                      text: "HELLO!"),
                                                  const TextSpan(text: "   "),
                                                  TextSpan(
                                                    text: loginglobaldata
                                                        .first.empName,
                                                    style: const TextStyle(
                                                        fontSize: 18),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                                children: <TextSpan>[
                                                  const TextSpan(
                                                      text: "Designation"),
                                                  const TextSpan(text: "     "),
                                                  TextSpan(
                                                    text: loginglobaldata
                                                                .first.appId ==
                                                            "1"
                                                        ? "ISD"
                                                        : loginglobaldata.first
                                                                    .appId ==
                                                                "2"
                                                            ? "TL"
                                                            : loginglobaldata
                                                                        .first
                                                                        .appId ==
                                                                    "3"
                                                                ? "RSO"
                                                                : loginglobaldata
                                                                            .first
                                                                            .appId ==
                                                                        "4"
                                                                    ? "DSP ISD"
                                                                    : loginglobaldata.first.appId ==
                                                                            "5"
                                                                        ? "MIS"
                                                                        : dashboardglobaldata
                                                                            .first
                                                                            .designation,
                                                    style: const TextStyle(
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                                children: <TextSpan>[
                                                  const TextSpan(text: "EmpId"),
                                                  const TextSpan(text: "     "),
                                                  TextSpan(
                                                    text: loginglobaldata
                                                        .first.loginId,
                                                    style: const TextStyle(
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            RichText(
                                              text: const TextSpan(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(text: "Branch Name"),
                                                  TextSpan(text: "     "),
                                                  TextSpan(
                                                    text: "Delhi",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Card(
                                      margin: const EdgeInsets.all(0),
                                      color: Colors.white,
                                      elevation: 6,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            padding: const EdgeInsets.all(6.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: RichText(
                                                text: const TextSpan(
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.black),
                                                  children: [
                                                    TextSpan(
                                                      text: 'Notice Boards',
                                                      style: TextStyle(
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16.0,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Card(
                                            margin: const EdgeInsets.all(0),
                                            color: Colors.blue,
                                            elevation: 6,
                                            child: TextButton(
                                              onPressed: () {
                                                Get.to(() =>
                                                    const AttendencePage());
                                              },
                                              child: Container(
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  children: const [
                                                    Text(
                                                      '',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0),
                                                    ),
                                                    Image(
                                                        image: AssetImage(
                                                            'assets/attendance_blank.png'),
                                                        height: 85),
                                                    Text(
                                                      'Attendance',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                    Text(
                                                      '',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10.0),
                                        Expanded(
                                          child: Card(
                                            margin: const EdgeInsets.all(0),
                                            color: Colors.blue,
                                            elevation: 6,
                                            child: TextButton(
                                              onPressed: () async {
                                                _handleURLButtonPress(
                                                    context,
                                                    'https://web.multiplier.co.in/dkffts/dkfftsapp_sales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                    "Sales Form");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  children: const [
                                                    Text(
                                                      '',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0),
                                                    ),
                                                    Image(
                                                        image: AssetImage(
                                                            'assets/sales_blank.png'),
                                                        height: 85),
                                                    Text(
                                                      'Sales Punch',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                    Text(
                                                      '',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Card(
                                            margin: const EdgeInsets.all(0),
                                            color: Colors.blue,
                                            elevation: 6,
                                            child: TextButton(
                                              onPressed: () async {
                                                _handleURLButtonPress(
                                                    context,
                                                    'https://web.multiplier.co.in/dkffts/dkfftsapp_attendancesummary.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                    "Attendance Summary");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  children: const [
                                                    Image(
                                                        image: AssetImage(
                                                            'assets/attendance_summary.png'),
                                                        height: 85),
                                                    Text(
                                                      'Attendance',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                    Text(
                                                      'Summary',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10.0),
                                        Expanded(
                                          child: Card(
                                            margin: const EdgeInsets.all(0),
                                            color: Colors.blue,
                                            elevation: 6,
                                            child: TextButton(
                                              onPressed: () async {
                                                _handleURLButtonPress(
                                                    context,
                                                    'https://web.multiplier.co.in/dkffts/dkfftsapp_viewsales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                    "Sales Summary");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  children: const [
                                                    Image(
                                                        image: AssetImage(
                                                            'assets/sales_summary.png'),
                                                        height: 85),
                                                    Text(
                                                      'Sales',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                    Text(
                                                      'Summary',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Card(
                                            margin: const EdgeInsets.all(0),
                                            color: Colors.blue,
                                            elevation: 6,
                                            child: TextButton(
                                              onPressed: () async {
                                                _handleURLButtonPress(
                                                    context,
                                                    'https://web.multiplier.co.in/dkffts/dkfftsapp_targetachievement.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                    "Target Vs Achievement");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  children: const [
                                                    Image(
                                                        image: AssetImage(
                                                            'assets/achievement.png'),
                                                        height: 85),
                                                    Text(
                                                      'Target',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                    Text(
                                                      'VS Achievement',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10.0),
                                        Expanded(
                                          child: Container(
                                            margin: const EdgeInsets.all(0),
                                            color: Colors.white,
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Container(
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  children: const [
                                                    Image(
                                                        image: AssetImage(
                                                            'assets/white.png'),
                                                        height: 85),
                                                    Text(
                                                      'Sales',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                    Text(
                                                      'Summary',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : loginglobaldata.first.appId == "5"
                                ? Column(
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Card(
                                          margin: const EdgeInsets.all(0),
                                          color: Colors.white,
                                          elevation: 6,
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    children: <TextSpan>[
                                                      const TextSpan(
                                                          text: "HELLO!"),
                                                      const TextSpan(
                                                          text: "   "),
                                                      TextSpan(
                                                        text: loginglobaldata
                                                            .first.empName,
                                                        style: const TextStyle(
                                                            fontSize: 18),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                RichText(
                                                  text: TextSpan(
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                    ),
                                                    children: <TextSpan>[
                                                      const TextSpan(
                                                          text: "Designation"),
                                                      const TextSpan(
                                                          text: "     "),
                                                      TextSpan(
                                                        text: loginglobaldata
                                                                    .first
                                                                    .appId ==
                                                                "1"
                                                            ? "ISD"
                                                            : loginglobaldata
                                                                        .first
                                                                        .appId ==
                                                                    "2"
                                                                ? "TL"
                                                                : loginglobaldata
                                                                            .first
                                                                            .appId ==
                                                                        "3"
                                                                    ? "RSO"
                                                                    : loginglobaldata.first.appId ==
                                                                            "4"
                                                                        ? "DSP ISD"
                                                                        : loginglobaldata.first.appId ==
                                                                                "5"
                                                                            ? "MIS"
                                                                            : dashboardglobaldata.first.designation,
                                                        style: const TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                RichText(
                                                  text: TextSpan(
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                    ),
                                                    children: <TextSpan>[
                                                      const TextSpan(
                                                          text: "EmpId"),
                                                      const TextSpan(
                                                          text: "     "),
                                                      TextSpan(
                                                        text: loginglobaldata
                                                            .first.loginId,
                                                        style: const TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: "Branch Name"),
                                                      TextSpan(text: "     "),
                                                      TextSpan(
                                                        text: "Delhi",
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: Card(
                                          margin: const EdgeInsets.all(0),
                                          color: Colors.white,
                                          elevation: 6,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: RichText(
                                                    text: const TextSpan(
                                                      style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.black),
                                                      children: [
                                                        TextSpan(
                                                          text: 'Notice Boards',
                                                          style: TextStyle(
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16.0,
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Card(
                                                margin: const EdgeInsets.all(0),
                                                color: Colors.blue,
                                                elevation: 6,
                                                child: TextButton(
                                                  onPressed: () {
                                                    Get.to(() =>
                                                        const AttendencePage());
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.zero,
                                                    child: Column(
                                                      children: const [
                                                        Text(
                                                          '',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10.0),
                                                        ),
                                                        Image(
                                                            image: AssetImage(
                                                                'assets/attendance_blank.png'),
                                                            height: 85),
                                                        Text(
                                                          'Attendance',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0),
                                                        ),
                                                        Text(
                                                          '',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10.0),
                                            Expanded(
                                              child: Card(
                                                margin: const EdgeInsets.all(0),
                                                color: Colors.blue,
                                                elevation: 6,
                                                child: TextButton(
                                                  onPressed: () async {
                                                    _handleURLButtonPress(
                                                        context,
                                                        'https://web.multiplier.co.in/dkffts/dkfftsapp_sales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                        "Attendance Summary");
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.zero,
                                                    child: Column(
                                                      children: const [
                                                        Image(
                                                            image: AssetImage(
                                                                'assets/attendance_summary.png'),
                                                            height: 85),
                                                        Text(
                                                          'Attendance',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0),
                                                        ),
                                                        Text(
                                                          'Summary',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      SizedBox(
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Card(
                                                margin: const EdgeInsets.all(0),
                                                color: Colors.blue,
                                                elevation: 6,
                                                child: TextButton(
                                                  onPressed: () async {
                                                    _handleURLButtonPress(
                                                        context,
                                                        'https://web.multiplier.co.in/dkffts/dkfftsapp_attendancesummary.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                        "Team Attendance Summary");
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.zero,
                                                    child: Column(
                                                      children: const [
                                                        Image(
                                                            image: AssetImage(
                                                                'assets/attendance_drawer.png'),
                                                            height: 85),
                                                        Text(
                                                          'Team Attendance',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0),
                                                        ),
                                                        Text(
                                                          'Summary',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10.0),
                                            Expanded(
                                              child: Card(
                                                margin: const EdgeInsets.all(0),
                                                color: Colors.blue,
                                                elevation: 6,
                                                child: TextButton(
                                                  onPressed: () async {
                                                    _handleURLButtonPress(
                                                        context,
                                                        'https://web.multiplier.co.in/dkffts/dkfftsapp_viewsales.action?userid=${loginglobaldata.first.loginId}&preflag=Y',
                                                        "Team Sales Summary");
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.zero,
                                                    child: Column(
                                                      children: const [
                                                        Image(
                                                            image: AssetImage(
                                                                'assets/sales_summary.png'),
                                                            height: 85),
                                                        Text(
                                                          'Team Sales',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0),
                                                        ),
                                                        Text(
                                                          'Summary',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : null;
      },
    );
  }
}
