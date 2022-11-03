import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';


part 'num_fact_resp.g.dart';

@JsonSerializable()
class NumFactResp {
  @JsonKey(name: 'text')
  String? text;
   @JsonKey(name: 'number')
  int? number;
   @JsonKey(name: 'found')
  bool? found;
   @JsonKey(name: 'type')
  String? type;

  NumFactResp({this.text, this.number, this.found, this.type});

  factory NumFactResp.fromJson(Map<String, dynamic> json) {
    return _$NumFactRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumFactRespToJson(this);
}
