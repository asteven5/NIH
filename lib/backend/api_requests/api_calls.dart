import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ParseUIDCall {
  static Future<ApiCallResponse> call({
    String? udi = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ParseUID',
      apiUrl: 'https://accessgudid.nlm.nih.gov/api/v3/parse_udi.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'udi': udi,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeviceLookupCall {
  static Future<ApiCallResponse> call({
    String? di = '08717648200274',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Device Lookup',
      apiUrl: 'https://accessgudid.nlm.nih.gov/api/v3/devices/lookup.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'di': di,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
