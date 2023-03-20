import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

// import '../../../Constants/style.dart';
import '../../../Routing/named_routes.dart';
// import '../../../Widgets/BottomBar/Components/button_attendence.dart';
// import '../../../Widgets/BottomBar/Components/button_logout.dart';
// import '../../../Widgets/BottomBar/Components/store_visit.dart';
import '../../../Widgets/recycler_view.dart';

class BeatPlan extends StatefulWidget {
  const BeatPlan({Key? key}) : super(key: key);

  @override
  State<BeatPlan> createState() => _BeatPlanState();
}

class _BeatPlanState extends State<BeatPlan> {
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
    await Future.delayed(const Duration(microseconds: 10));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: RecyclerViewData()),
    );
  }
}