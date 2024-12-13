import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mvmm/Features/home/data/repo/home_repo_imp.dart';
import 'package:mvmm/core/utils/api_service.dart';

final getit = GetIt.instance;
void setup() {
  getit.registerSingleton<Apiservice>(Apiservice(Dio()));
  getit.registerSingleton<HomeRepoImp>(HomeRepoImp(getit.get<Apiservice>()));
}



///  getit.registerSingleton<HomeRepoImp>(
//      HomeRepoImp(getit.registerSingleton<HomeRepoImp>(getit.registerSingleton<Apiservice>())));