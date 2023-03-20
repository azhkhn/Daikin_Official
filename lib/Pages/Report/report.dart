
import 'package:flutter/material.dart';

import 'page3.dart';


class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Report',style: TextStyle(color: Colors.white),)),
      ),
      body: const Page3(),
    );
  }
}