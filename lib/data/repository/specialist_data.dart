import 'package:mamapintarcare/data/model/specialist.dart';
import 'package:mamapintarcare/utility/colorResources.dart';

class SpecialistData {
  static List<SpeciaList> speciaList = [
    SpeciaList(
        iconUrl: 'assets/images1/bidan.png',
        title: 'Bidan',
        backgroundColor: ColorResources.COLOR_PRIMARY),
    SpeciaList(
        iconUrl: 'assets/images1/dokter.png',
        title: 'Dokter',
        backgroundColor: ColorResources.COLOR_YELLOW_SEA),
    SpeciaList(
        iconUrl: 'assets/images1/psikolog.png',
        title: 'Psioklog',
        backgroundColor: ColorResources.COLOR_MOUNTAIN_MEADOW),
  ];

  static List<SpeciaList> speciaList2 = [
    SpeciaList(
        iconUrl: 'assets/images1/spa.png',
        title: 'Spa',
        backgroundColor: ColorResources.COLOR_MEDIUM_SLATE_BLUE),
    SpeciaList(
        iconUrl: 'assets/images1/salon.png',
        title: 'Salon',
        backgroundColor: ColorResources.COLOR_MEDIUM_SLATE_BLUE),
    SpeciaList(
        iconUrl: 'assets/images1/lesmusik.png',
        title: 'Les Musik',
        backgroundColor: ColorResources.COLOR_MEDIUM_SLATE_BLUE),
    SpeciaList(
        iconUrl: 'assets/images1/preschool.png',
        title: 'Pre School',
        backgroundColor: ColorResources.COLOR_MEDIUM_SLATE_BLUE),
    SpeciaList(
        iconUrl: 'assets/images1/playground.png',
        title: 'Playground',
        backgroundColor: ColorResources.COLOR_MEDIUM_SLATE_BLUE),
    SpeciaList(
        iconUrl: 'assets/images1/kidsstation.png',
        title: 'Kids Salon',
        backgroundColor: ColorResources.COLOR_MEDIUM_SLATE_BLUE),
  ];

  static List<SpeciaList> getBannerList = [
    SpeciaList(
        bannerTitle: 'Anak tidak bisa tidur?',
        bannerDescription:
            'ayo cari layanan pijat buah hati dengan bidan dari mama pintar care.',
        price: 70000),
    SpeciaList(
        bannerTitle: 'Anak demam?',
        bannerDescription:
            'jangan biarkan demam terus terjadi! hubungi dokter dari mama pintar care sekarang. ',
        price: 35000),
    SpeciaList(
        bannerTitle: 'Anak sering menangis?',
        bannerDescription: 'Konsultasikan vitamin kebutuhan buah hati ',
        price: 35000),
    SpeciaList(
        bannerTitle: 'Anak ingin bermain?',
        bannerDescription:
            'ayo periksa playground terdekat, biarkan buah hati untuk bermain dengan kawan kawannya. ',
        price: 65000),
  ];
}
