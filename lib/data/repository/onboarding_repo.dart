import 'package:mamapintarcare/data/model/onboarding_model.dart';
import 'package:mamapintarcare/utility/strings.dart';

class OnBoardingRepo {
  List<OnBoardingModel> getOnboardingList = [
    OnBoardingModel(
      imageUrl: 'assets/images1/vector1.png',
      title: Strings.TITLE_FIRST_PAGE,
      description: Strings.SUBTITLE_FIRST_PAGE,
    ),
    OnBoardingModel(
      imageUrl: 'assets/images1/vector2.png',
      title: Strings.TITLE_SECOND_PAGE,
      description: Strings.SUBTITLE_SECOND_PAGE,
    ),
    OnBoardingModel(
      imageUrl: 'assets/images1/vector3.png',
      title: Strings.TITLE_THIRD_PAGE,
      description: Strings.SUBTITLE_THIRD_PAGE,
    ),
  ];
}
