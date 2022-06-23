import 'package:mamapintarcare/data/model/base/api_response.dart';
import 'package:mamapintarcare/demointegration/api_integration_demo_repo.dart';
import 'package:flutter/material.dart';

class ApiIntegrationDemoProvider extends ChangeNotifier {
  final ApiIntegrationDemoRepo repo;
  ApiIntegrationDemoProvider({@required this.repo});

  void getData(String data) async {
    ApiResponse apiResponse = await repo.getData(data);
    if (apiResponse.response != null &&
        apiResponse.response.statusCode == 200) {
      print('Get data successfully');
      // Manage data here with response
    } else {
      String errorMessage;
      if (apiResponse.error is String) {
        errorMessage = apiResponse.error.toString();
      } else {
        errorMessage = apiResponse.error.errors[0].message;
      }
      print('Failed to post data: $errorMessage');
    }
    notifyListeners();
  }

  void postData(String data) async {
    ApiResponse apiResponse = await repo.postData(data);
    if (apiResponse.response != null &&
        apiResponse.response.statusCode == 200) {
      print('Posted successfully');
      // Manage data here with response
    } else {
      String errorMessage;
      if (apiResponse.error is String) {
        errorMessage = apiResponse.error.toString();
      } else {
        errorMessage = apiResponse.error.errors[0].message;
      }
      print('Failed to post data: $errorMessage');
    }
    notifyListeners();
  }

  void deleteData(String data) async {
    ApiResponse apiResponse = await repo.removeData(data);
    if (apiResponse.response != null &&
        apiResponse.response.statusCode == 200) {
      print('Deleted successfully');
      // Manage data here with response
    } else {
      String errorMessage;
      if (apiResponse.error is String) {
        errorMessage = apiResponse.error.toString();
      } else {
        errorMessage = apiResponse.error.errors[0].message;
      }
      print('Failed to post data: $errorMessage');
    }
    notifyListeners();
  }

  void updateData(String data) async {
    ApiResponse apiResponse = await repo.updateData(data);
    if (apiResponse.response != null &&
        apiResponse.response.statusCode == 200) {
      print('Updated successfully');
      // Manage data here with response
    } else {
      String errorMessage;
      if (apiResponse.error is String) {
        errorMessage = apiResponse.error.toString();
      } else {
        errorMessage = apiResponse.error.errors[0].message;
      }
      print('Failed to post data: $errorMessage');
    }
    notifyListeners();
  }
}
