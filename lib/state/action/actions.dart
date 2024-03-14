import 'package:async_redux/async_redux.dart';
import 'package:space_x/state/app_state.dart';

// Reusable action on handling state in loading
abstract class LoadingAction extends ReduxAction<AppState> {
  LoadingAction({required this.actionKey});
  final String actionKey;

  @override
  void before() => dispatchSync(WaitAction.add(actionKey));

  @override
  void after() => dispatchSync(WaitAction.remove(actionKey));
}
