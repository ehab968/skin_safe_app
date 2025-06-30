import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';


Future<bool> checkUserlogged() async {
  final userToken = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  isUserLoggedIn = userToken != null && userToken.isNotEmpty;
  return isUserLoggedIn;
}
