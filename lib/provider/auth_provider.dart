import 'package:mamapintarcare/data/repository/auth_repo.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  final AuthRepo authRepo;
  AuthProvider({this.authRepo});

  String _countryCode = '';
  String get countryCode => _countryCode;
  List<String> _countryCodeList = [];
  List<String> get countryCodeList => _countryCodeList;

  updateCountryCode(String value) {
    _countryCode = value;
    notifyListeners();
  }

  void initializeCountryCodeList() {
    if (_countryCodeList.length == 0) {
      _countryCodeList.clear();
      _countryCodeList = authRepo.getCountryList;
      _countryCode = authRepo.getCountryList[2];
      notifyListeners();
    }
  }
}
