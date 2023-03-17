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
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('Beat Plan By Outlet'),
      ),
      drawer: const BuildNavBar(),
      body: const OutLetRecyclerView(),
      bottomSheet: const OutLetBeatPlanNavBar(),
    );
  }
}
