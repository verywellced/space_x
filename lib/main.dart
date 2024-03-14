import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:space_x/state/app_state.dart';
import 'package:space_x/utilities/routes.dart';

void main() {
  final store = Store<AppState>(
    initialState: AppState(),
    actionObservers: kReleaseMode ? null : [ConsoleActionObserver<AppState>()],
  );

  runApp(
    StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
      ),
    ),
  );
}
