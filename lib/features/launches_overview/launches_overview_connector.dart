import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:space_x/features/launches_overview/launches_overview_page.dart';
import 'package:space_x/features/launches_overview/launches_overview_vm.dart';
import 'package:space_x/state/action/launch_action.dart';
import 'package:space_x/state/app_state.dart';

class LaunchesOverviewConnector extends StatelessWidget {
  const LaunchesOverviewConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LaunchesOverviewVm>(
      vm: () => LaunchesOverviewFactory(),
      onInit: (store) => store.dispatchAsync(GetLaunchAction()),
      builder: (context, vm) => LaunchesOverviewPage(
        launches: vm.launches,
        shouldShowFab: false,
      ),
    );
  }
}
