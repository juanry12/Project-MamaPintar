import 'package:mamapintarcare/data/model/base/api_response.dart';
import 'package:flutter/material.dart';
import 'package:mamapintarcare/data/datasource/remote/dio/dio_client.dart';
import 'package:mamapintarcare/data/datasource/remote/exception/api_error_handler.dart';

class ApiIntegrationDemoRepo {
  final DioClient dioClient;
  ApiIntegrationDemoRepo({@required this.dioClient});

  Future<ApiResponse> getData(String data) async {
    try {
      final response = await dioClient.get('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  Future<ApiResponse> postData(String data) async {
    try {
      final response = await dioClient.post('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  Future<ApiResponse> removeData(String data) async {
    try {
      final response = await dioClient.delete('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  Future<ApiResponse> updateData(String data) async {
    try {
      final response = await dioClient.patch('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}
