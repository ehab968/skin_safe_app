import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/core/networking/dio_factory.dart';
import 'package:skin_care_app/features/Articles/data/repo/article_repo.dart';
import 'package:skin_care_app/features/Articles/logic/cubit/article_cubit.dart';
import 'package:skin_care_app/features/BookingAppointment/data/repo/appointment_repo.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_cubit.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/data/repo/confirmation_code_repo.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/logic/cubit/confirmation_code_cubit.dart';
import 'package:skin_care_app/features/authentication/forget_password/data/repo/forget_password_repo.dart';
import 'package:skin_care_app/features/authentication/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:skin_care_app/features/authentication/login/data/repo/login_repo.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/reset_password/data/repo/reset_password_repo.dart';
import 'package:skin_care_app/features/authentication/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/repo/sign_up_repo.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/repo/verficatiion_repo.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_cubit.dart';
import 'package:skin_care_app/features/home/data/repo/top_doctors_repo.dart';
import 'package:skin_care_app/features/home/data/repo/uv_index_repo.dart';
import 'package:skin_care_app/features/home/data/repo/search_repo.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/uv_index_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/search_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/recent_search_cubit.dart';
import 'package:skin_care_app/features/Profile/data/repo/user_profile_repo.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_cubit.dart';
import 'package:skin_care_app/features/Appointment_details/data/repo/appointment_details_repo.dart';
import 'package:skin_care_app/features/Appointment_details/logic/cubit/appointment_details_cubit.dart';
import 'package:skin_care_app/features/My_Appointments/data/repo/appointment_list_repo.dart';
import 'package:skin_care_app/features/My_Appointments/data/repo/appointments_repo.dart';
import 'package:skin_care_app/features/My_Appointments/logic/cubit/appointments_cubit.dart';
import 'package:skin_care_app/features/Notifications/data/repo/notification_repo.dart';
import 'package:skin_care_app/features/Notifications/logic/cubit/notification_cubit.dart';
import 'package:skin_care_app/features/reports/data/repo/scan_report_repo.dart';
import 'package:skin_care_app/features/reports/data/repo/user_report_repo.dart';
import 'package:skin_care_app/features/reports/logic/cubit/user_report_cubit.dart';
import 'package:skin_care_app/features/reports/logic/scan_report_cubit/scan_report_cubit.dart';


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
  // forget password repo && forget password cubit
  getIt.registerLazySingleton<ForgetPasswordRepo>(
    () => ForgetPasswordRepo(getIt()),
  );
  getIt.registerFactory<ForgetPasswordCubit>(
    () => ForgetPasswordCubit(getIt()),
  );
  // confirmation code repo && confirmation code cubit
  getIt.registerLazySingleton<ConfirmationCodeRepo>(
    () => ConfirmationCodeRepo(getIt()),
  );
  getIt.registerFactory<ConfirmationCodeCubit>(
    () => ConfirmationCodeCubit(getIt()),
  );
  // reset password repo && reset password cubit
  getIt.registerLazySingleton<ResetPasswordRepo>(
    () => ResetPasswordRepo(getIt()),
  );
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));

  // articles repo && articles cubit
  getIt.registerLazySingleton<ArticleRepo>(() => ArticleRepo(getIt()));
  getIt.registerFactory<ArticleCubit>(() => ArticleCubit(getIt()));

  // top doctors repo && top doctors cubit
  getIt.registerLazySingleton<TopDoctorsRepo>(() => TopDoctorsRepo(getIt()));
  getIt.registerFactory<TopDoctorsCubit>(() => TopDoctorsCubit(getIt()));

  // user profile repo && user profile cubit
  getIt.registerLazySingleton<UserProfileRepo>(() => UserProfileRepo(getIt()));
  getIt.registerFactory<UserProfileCubit>(() => UserProfileCubit(getIt()));

  // uv index repo && uv index cubit
  getIt.registerLazySingleton<UVIndexRepo>(() => UVIndexRepo(getIt()));
  getIt.registerFactory<UVIndexCubit>(() => UVIndexCubit(getIt()));

  // search repo && search cubit
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo());
  getIt.registerFactory<SearchCubit>(() => SearchCubit(getIt()));

  // recent search cubit (singleton for global state)
  getIt.registerSingleton<RecentSearchCubit>(RecentSearchCubit(getIt()));

  // appointment repo && appointment cubit
  getIt.registerLazySingleton<AppointmentRepo>(() => AppointmentRepo(getIt()));
  getIt.registerFactory<AppointmentCubit>(() => AppointmentCubit(getIt()));

  // Appointment Details
  getIt.registerLazySingleton<AppointmentDetailsRepo>(
    () => AppointmentDetailsRepo(getIt()),
  );
  getIt.registerFactory<AppointmentDetailsCubit>(
    () => AppointmentDetailsCubit(getIt()),
  );

  // My Appointments
  getIt.registerLazySingleton<AppointmentListRepo>(
    () => AppointmentListRepo(getIt()),
  );
  getIt.registerLazySingleton<AppointmentsRepo>(
    () => AppointmentsRepo(getIt()),
  );
  getIt.registerFactory<AppointmentsCubit>(() => AppointmentsCubit(getIt()));

  getIt.registerLazySingleton<NotificationRepo>(
      () => NotificationRepo(getIt<ApiService>()));
  getIt.registerFactory<NotificationCubit>(
      () => NotificationCubit(getIt<NotificationRepo>()));
  // scan report repo && scan report cubit
  getIt.registerLazySingleton<ScanReportRepo>(() => ScanReportRepo());
  getIt.registerFactory<ScanReportCubit>(() => ScanReportCubit(getIt()));

  // user report cubit
  getIt.registerLazySingleton<UserReportRepo>(() => UserReportRepo(getIt()));
  getIt.registerFactory<UserReportCubit>(() => UserReportCubit(getIt()));
}
