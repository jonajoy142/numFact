// ignore_for_file: unused_import, no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:api_num2/num_fact_resp/num_fact_resp.dart';
import 'package:http/http.dart' as http;

Future<NumFactResp> getNumberMean({required String num}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  final _jsonBody = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = NumFactResp.fromJson(_jsonBody);
  return _data;
}
