import 'package:auth_buttons/auth_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);
    } catch (error) {
      print(error);
    }
  }


 Future<void> signOut() async{
      await GoogleSignIn().disconnect();
      FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In to Continue",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Vegi",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.lightGreen,
                        offset: Offset(4, 4))
                  ],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            GoogleAuthButton(
              onPressed: () {
                googleLogin();
              },
              style: AuthButtonStyle(
                  buttonColor: Colors.white,
                  textStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                  borderRadius: 5,
                  elevation: 5,
                  iconType: AuthIconType.secondary),
            ),
            SizedBox(
              height: 10,
            ),
            AppleAuthButton(
              onPressed: () {},
              style: AuthButtonStyle(
                  buttonColor: Colors.white,
                  textStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                  borderRadius: 5,
                  elevation: 5,
                  //iconType:AuthIconType.secondary,
                  iconType: AuthIconType.outlined,
                  iconColor: Colors.orange,
                  width: 275,
                  iconSize: 35),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "By Signing You are Agree to Our",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
            ),
            Text("Terms and Privacy Policy",
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800)),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: (){
              signOut();
            }, child: Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }
}
