import 'package:flutter/material.dart';
import '../../../Widgets/buidnavbar.dart';
import '../../../Widgets/outlet_beat_plan_navbar.dart';
import '../../../Widgets/outlet_recyclerview.dart';

class OutletBeatPlan extends StatefulWidget {
  const OutletBeatPlan({Key? key}) : super(key: key);

  @override
  State<OutletBeatPlan> createState() => _OutletBeatPlanState();
}

class _OutletBeatPlanState extends State<OutletBeatPlan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Beat Plan By Outlet'),
      ),
      body: const OutLetRecyclerView(),
      bottomSheet: const OutLetBeatPlanNavBar(),
    );
  }
}
