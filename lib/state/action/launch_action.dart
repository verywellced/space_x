import 'package:space_x/api/api_service.dart';
import 'package:space_x/state/action/actions.dart';
import 'package:space_x/state/app_state.dart';

///  Action for getting launches
class GetLaunchAction extends LoadingAction {
  static const key = 'get-launch-action';

  GetLaunchAction() : super(actionKey: key);

  @override
  Future<AppState> reduce() async {
    final launches = await ApiService().launchApi.getLaunches();

    return state.copyWith(launches: launches);
  }
}
