import 'package:mamapintarcare/data/model/membership_model.dart';
import 'package:mamapintarcare/data/repository/membership_repo.dart';
import 'package:flutter/material.dart';

class MembershipProvider extends ChangeNotifier {
  final MembershipRepo membershipRepo;
  MembershipProvider({@required this.membershipRepo});

  List<MembershipModel> getBannerList() {
    return membershipRepo.getMembershipList();
  }
}
