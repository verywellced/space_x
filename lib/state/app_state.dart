import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_x/api/model/launch.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(<Launch>[]) List<Launch> launches,
    @Default(<Launch>[]) List<Launch> searchLaunches,

    //ignored by state
    @Default(Wait.empty) @JsonKey(ignore: true) Wait wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
