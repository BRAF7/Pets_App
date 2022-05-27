import 'package:firebase_auth/firebase_auth.dart';

abstract class SignUpRepository {
  final FirebaseAuth _auth;
  SignUpRepository(this._auth);

  Future<SignUpResponse> register(signUpData data) async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      userCredential.user!.updateDisplayName("${data.full_name}");
      return SignUpResponse(null, userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return SignUpResponse(e.code, null);
    }

   
  }
}

class signUpData {
  final String full_name, email, password;

  signUpData({
    required this.full_name,
    required this.email,
    required this.password,
  });
}

class SignUpResponse {
  final String? error;
  final User? user;
  SignUpResponse(this.error, this.user);
}
