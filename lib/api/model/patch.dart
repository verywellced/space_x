import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch.freezed.dart';
part 'patch.g.dart';

@freezed
class Patch with _$Patch {
  factory Patch({
    @Default('') @JsonKey(name: 'small') String small,
    @Default('') @JsonKey(name: 'large') String large,
  }) = _Patch;

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);
}
