import 'package:flutter/material.dart';
import 'package:google_suz/screens/register/view.dart';
import 'package:google_suz/screens/test/view.dart';
import 'package:google_suz/shared/design/my_clipper.dart';
import '../../shared/design/my_input.dart';
import '../forget_password/view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    'LOGIN ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,color: Colors.white),
                  ),
                ),
              ),
           ),
              SizedBox(height: 50,),
              SingleChildScrollView(

                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(
                    //   height: 51,
                    // ),


                    const SizedBox(height: 38),
                    MyInput(
                      title: 'Email address ',

                      isemail: true,
                      isPassword: false,
                      isRequired: true,
                    ),
                    MyInput(
                      title: 'password ',
                      isPassword: true,
                      isemail: false,
                      isRequired: true,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute (
                          builder: (BuildContext context) => const ForgetPasswordScreen(),
                        ), );
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 63, end: 63),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TestScreen(),));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(294, 54),
                        ),
                        child: Text(
                          'Login'.toUpperCase(),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 73),
                      child: Row(
                        children: [
                          const Text(
                            'New to app?',
                            style: TextStyle(fontSize: 17, color: Color(0xff090808)),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute (
                                builder: (BuildContext context) => const RegisterScreen(),
                              ),
                              );
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(fontSize: 17, color: Color(0xff034C65)),
                            ),
                          ),
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
