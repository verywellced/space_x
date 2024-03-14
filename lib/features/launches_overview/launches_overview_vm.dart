import 'package:async_redux/async_redux.dart';
import 'package:space_x/api/model/launch.dart';
import 'package:space_x/features/launches_overview/launches_overview_connector.dart';
import 'package:space_x/state/action/launch_action.dart';
import 'package:space_x/state/app_state.dart';
import 'package:space_x/utilities/async.dart';

class LaunchesOverviewFactory extends VmFactory<AppState, LaunchesOverviewConnector> {
  @override
  Vm fromStore() => LaunchesOverviewVm(
        launches: _launches(),
      );

  Async<List<Launch>> _launches() {
    if (state.wait.isWaitingFor(GetLaunchAction.key)) return const Async.loading();
    if (state.launches.isEmpty) return const Async.error('No Items');
    return Async(state.launches);
  }
}

class LaunchesOverviewVm<T> extends Vm {
  LaunchesOverviewVm({
    required this.launches,
  }) : super(equals: [launches]);

  final Async<List<Launch>> launches;
}
