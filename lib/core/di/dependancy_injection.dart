import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/core/networking/dio_factory.dart';
import 'package:skin_care_app/features/authentication/login/data/repo/login_repo.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/repo/sign_up_repo.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/repo/verficatiion_repo.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_cubit.dart';

final GetIt getIt = GetIt.instance;
void setUpGetIt() {
  // dio && api service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // signup repo && signup cubit
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerLazySingleton<SignUpCubit>(() => SignUpCubit(getIt()));

  // verfication repo && verfication cubit
  getIt.registerLazySingleton<VerficatiionRepo>(
    () => VerficatiionRepo(getIt()),
  );
  getIt.registerFactory<VerficationCubit>(() => VerficationCubit(getIt()));
  // login repo && login cubit
   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
