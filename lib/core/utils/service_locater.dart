import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocater() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      getIt.get<ApiService>(),
    ),
  );

  getIt.registerSingleton<AuthRepo>(
    AuthRepo(
      getIt.get<ApiService>(),
    ),
  );
}

class AuthRepo {
  final ApiService apiService;

  AuthRepo(this.apiService);
}
