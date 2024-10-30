import 'dart:convert';

Map<String, dynamic> jsonFieldFromJson(dynamic data) {
  if (data is String) {
    try {
      return jsonDecode(data) as Map<String, dynamic>;
    } catch (e) {
      //print('Error decoding JSON: $e');
      return {};
    }
  } else if (data is Map<String, dynamic>) {
    return data;
  } else if (data is Map<dynamic, dynamic>) {
    return data.map((key, value) => MapEntry(key.toString(), value));
  }
  return {};
}

dynamic jsonFieldToJson(Map<String, dynamic> field) {
  return jsonEncode(field);
}
