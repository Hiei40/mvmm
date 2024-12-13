import 'package:dio/dio.dart';

class Apiservice {
final _baseUrl = 'https://www.googleapis.com/books/v1/';
final Dio dio ;

Apiservice(this.dio,);
Future<Map<String,dynamic>>get({required String endpoint})async{
  final response = await dio.get("$_baseUrl$endpoint");
  return response.data;

}
Future<Map<String, dynamic>> post({required String endpoint, Map<String, dynamic>? data}) async {
  final response = await dio.post(
    "$_baseUrl$endpoint",
    data: data,
  );
  return response.data;
}

// Generic PUT method
Future<Map<String, dynamic>> put({required String endpoint, Map<String, dynamic>? data}) async {
  final response = await dio.put(
    "$_baseUrl$endpoint",
    data: data,
  );
  return response.data;
}

// Generic DELETE method
Future<void> delete({required String endpoint, Map<String, dynamic>? data}) async {
  await dio.delete(
    "$_baseUrl$endpoint",
    data: data,
  );
}
  // Generic PATCH method
  Future<Map<String, dynamic>> patch({required String endpoint, Map<String, dynamic>? data}) async {
    final response = await dio.patch(
      "$_baseUrl$endpoint",
      data: data,
    );
    return response.data;
  }

}