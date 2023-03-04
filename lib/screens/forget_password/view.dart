import 'package:flutter/material.dart';
import 'package:google_suz/screens/login/view.dart';
import '../../shared/design/my_input.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 20, top: 20, bottom: 20),
          child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const LoginScreen(),
              ),
              );            },
            icon:
                const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 51,
            ),
            Center(
              child: const Text(
                'FORGET PASSWORD',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Please enter your email address, you will \nreceive a link to create a new password via', style: TextStyle(fontSize: 17),),
            const SizedBox(height: 110),
            MyInput(
              title: 'Email  ',
              isemail: true,
              isRequired: true,
              isPassword: false,
            ),
            const SizedBox(
              height: 214,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 63, end: 63),
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(294, 54),
                ),
                child: Center(
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 18,),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
