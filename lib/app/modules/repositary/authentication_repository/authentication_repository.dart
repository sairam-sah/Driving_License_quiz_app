// ignore_for_file: avoid_print

import 'package:driving_license/app/modules/repositary/authentication_repository/exceptions/signup_email_password_failure.dart';
import 'package:driving_license/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

// variable
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAllNamed(Routes.SIGNIN)
        : Get.offAllNamed(Routes.HOME);
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAllNamed(Routes.HOME)
          : Get.toNamed(Routes.SIGNIN);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEamilAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPATION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEamilAndPasswordFailure();
      print('EXCERTION - ${ex.message}');
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // ignore: unused_catch_clause
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();

  
  // Future<void> sendEmailVerification() async {
  //   try{
  //   await  _auth.currentUser?.sendEmailVerification();
  //   }on FirebaseAuthException catch (){
      
  //   }
  // }

}
