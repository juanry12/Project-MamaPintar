import 'package:mamapintarcare/data/model/faq_model.dart';
import 'package:mamapintarcare/data/repository/faq_repo.dart';
import 'package:flutter/material.dart';

class FaqProvider extends ChangeNotifier {
  final FaqRepo faqRepo;
  FaqProvider({@required this.faqRepo});

  List<FaqModel> getFaqList() {
    return faqRepo.getFaqList();
  }
}
