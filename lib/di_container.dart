import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:mamapintarcare/data/datasource/remote/dio/dio_client.dart';
// import 'package:mamapintarcare/data/datasource/remote/dio/logging_interceptor.dart';
import 'package:mamapintarcare/data/repository/appointment_repo.dart';
import 'package:mamapintarcare/data/repository/auth_repo.dart';
import 'package:mamapintarcare/data/repository/chat_repo.dart';
import 'package:mamapintarcare/data/repository/contact_repo.dart';
import 'package:mamapintarcare/data/repository/faq_repo.dart';
import 'package:mamapintarcare/data/repository/membership_repo.dart';
import 'package:mamapintarcare/data/repository/onboarding_repo.dart';
import 'package:mamapintarcare/data/repository/profile_repo.dart';
import 'package:mamapintarcare/helper/network_info.dart';
import 'package:mamapintarcare/provider/appointment_provider.dart';
import 'package:mamapintarcare/provider/auth_provider.dart';
import 'package:mamapintarcare/provider/chat_provider.dart';
import 'package:mamapintarcare/provider/contact_provider.dart';
import 'package:mamapintarcare/provider/faq_provider.dart';
import 'package:mamapintarcare/provider/membership_provider.dart';
import 'package:mamapintarcare/provider/onboarding_provider.dart';
import 'package:mamapintarcare/provider/profile_provider.dart';
import 'package:mamapintarcare/utility/app_constants.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton(() => NetworkInfo(sl()));
  sl.registerLazySingleton(() => DioClient(AppConstants.BASE_URL, sl()));

  // Repository
  sl.registerLazySingleton(() => AppointmentRepo());
  sl.registerLazySingleton(() => AuthRepo());
  sl.registerLazySingleton(() => ChatRepo());
  sl.registerLazySingleton(() => ContactRepo());
  sl.registerLazySingleton(() => FaqRepo());
  sl.registerLazySingleton(() => MembershipRepo());
  sl.registerLazySingleton(() => OnBoardingRepo());
  sl.registerLazySingleton(() => ProfileRepo());

  // Provider
  sl.registerFactory(() => AppointmentProvider(appointmentRepo: sl()));
  sl.registerFactory(() => AuthProvider(authRepo: sl()));
  sl.registerFactory(() => ChatProvider(chatRepo: sl()));
  sl.registerFactory(() => ContactProvider(contactRepo: sl()));
  sl.registerFactory(() => FaqProvider(faqRepo: sl()));
  sl.registerFactory(() => MembershipProvider(membershipRepo: sl()));
  sl.registerFactory(() => OnBoardingProvider(onBoardingRepo: sl()));
  sl.registerFactory(() => ProfileProvider(profileRepo: sl()));

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  // sl.registerLazySingleton(() => LoggingInterceptor());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
