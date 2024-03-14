import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_x/api/model/links.dart';

part 'launch.freezed.dart';
part 'launch.g.dart';

@freezed
class Launch with _$Launch {
  factory Launch({
    @JsonKey(name: 'name') required String name,
    @Default(0) @JsonKey(name: 'flight_number') int? flightNumber,
    @Default('') @JsonKey(name: 'details') String? details,
    @JsonKey(name: 'links') required Links links,
  }) = _Launch;

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);
}
