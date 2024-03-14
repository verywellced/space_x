import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_x/api/model/patch.dart';

part 'links.freezed.dart';
part 'links.g.dart';

@freezed
class Links with _$Links {
  factory Links({
    @JsonKey(name: 'patch') required Patch name,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
