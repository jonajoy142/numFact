// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'num_fact_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumFactResp _$NumFactRespFromJson(Map<String, dynamic> json) => NumFactResp(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumFactRespToJson(NumFactResp instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
