import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/auth_service.dart';
import 'package:skin_care_app/core/helper/simple_bloc_observer.dart';
import 'package:skin_care_app/skin_safe_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await checkUserlogged();
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = SimpleBlocObserver();
  runApp(const SkinSafeApp());
}
