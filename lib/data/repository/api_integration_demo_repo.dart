import 'package:flutter/material.dart';
import 'package:mamapintarcare/data/datasource/remote/dio/dio_client.dart';
import 'package:mamapintarcare/data/datasource/remote/exception/api_error_handler.dart';
import 'package:mamapintarcare/data/model/base/api_response.dart';

class ApiIntegrationDemoRepo {
  final DioClient dioClient;
  ApiIntegrationDemoRepo({@required this.dioClient});

  Future<ApiResponse> getData(String offset) async {
    try {
      final response = await dioClient.get('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  Future<ApiResponse> postData(int productID) async {
    try {
      final response = await dioClient.post('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  Future<ApiResponse> removeData(int productID) async {
    try {
      final response = await dioClient.delete('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  Future<ApiResponse> updateData(int productID) async {
    try {
      final response = await dioClient.post('end_url_here');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}
