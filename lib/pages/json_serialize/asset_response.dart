import 'package:json_annotation/json_annotation.dart';

import 'quote.dart';

part 'asset_response.g.dart';

@JsonSerializable()
class AssetResponse {
  @JsonKey(name: "list_quotes")
  final List<Quote> list;

  AssetResponse({
    required this.list,
  });

  Map<String, dynamic> toJson() => _$AssetResponseToJson(this);

  factory AssetResponse.fromJson(Map<String, dynamic> json) => _$AssetResponseFromJson(json);
}
