import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Features/home/data/repo/home_repo_imp.dart';

final getit = GetIt.instance;
void setup() {
  getit.registerSingleton<ApiService>(ApiService(Dio()));
  getit.registerSingleton<HomeRepoImp>(HomeRepoImp(getit.get<ApiService>()));
}



///  getit.registerSingleton<HomeRepoImp>(
//      HomeRepoImp(getit.registerSingleton<HomeRepoImp>(getit.registerSingleton<Apiservice>())));