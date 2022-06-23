import 'package:mamapintarcare/data/model/contact_model.dart';
import 'package:mamapintarcare/data/repository/contact_repo.dart';
import 'package:flutter/material.dart';

class ContactProvider extends ChangeNotifier {
  final ContactRepo contactRepo;
  ContactProvider({@required this.contactRepo});

  List<ContactModel> getContactList() {
    return contactRepo.getContactList();
  }
}
