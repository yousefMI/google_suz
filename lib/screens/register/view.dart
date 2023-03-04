import 'package:flutter/material.dart';
import 'package:google_suz/shared/design/my_clipper.dart';


import '../../shared/design/my_input.dart';
import '../login/view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(clipper: MyClipper(),
                child: Container(height: 200,color: Colors.blueAccent,
                  child: Center(
                    child: const Text(
                      'Register',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,color: Colors.white),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 38),
                    MyInput(
                      title: 'Full name ',
                      isemail: false,
                      isRequired: true,
                      isPassword: false,

                    ),
                    MyInput(
                      title: 'Email address ',
                      isemail: true,
                      isPassword: false,
                      isRequired: true,

                    ),
                    MyInput(
                      title: 'password ',
                      isPassword: true,
                      isemail: true,
                      isRequired: true,
                    ),

                    MyInput(
                      title: 'confirm password ',
                      isPassword: true,
                      isemail: true,
                      isRequired: true,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 63, end: 63),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(294, 54),
                        ),
                        child: Center(
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 50),
                      child: Row(
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(fontSize: 15, color: Color(0xff090808)),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute (
                                builder: (BuildContext context) => const LoginScreen(),
                              ),);
                            },
                            child: const Text(
                              'Sign in',
                              style: TextStyle(fontSize: 15, color: Color(0xff034C65),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
