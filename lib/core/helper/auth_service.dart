import 'package:firebase_auth/firebase_auth.dart';
import 'package:skin_care_app/core/helper/constants.dart';

void checkLoggedInUser() {
  isUserLoggedIn = FirebaseAuth.instance.currentUser != null;
}
