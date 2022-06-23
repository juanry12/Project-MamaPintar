import 'package:mamapintarcare/data/model/onboarding_model.dart';
import 'package:mamapintarcare/data/repository/onboarding_repo.dart';
import 'package:flutter/material.dart';

class OnBoardingProvider with ChangeNotifier {
  final OnBoardingRepo onBoardingRepo;
  OnBoardingProvider({@required this.onBoardingRepo});

  List<OnBoardingModel> getOnBoardingList() {
    return onBoardingRepo.getOnboardingList;
  }
}
