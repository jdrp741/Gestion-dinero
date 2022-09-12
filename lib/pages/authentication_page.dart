import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class AuthenticationPage extends StatefulWidget {
  AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff05F2AF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              "assets/imagin.png",
              scale: 1,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _biometrico(context);
                },
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.only(
                      top: 70, left: 40, bottom: 200, right: 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.fingerprint,
                        color: Colors.blue,
                        size: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Pulsa para acceder",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _biometrico(context) async {
    bool authenticated = false;

    authenticated = await auth.authenticate(
      localizedReason: 'Ponga el dedo',
    );

    if (authenticated) Navigator.pushReplacementNamed(context, '/');
  }
}
