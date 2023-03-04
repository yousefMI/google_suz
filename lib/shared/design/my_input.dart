import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {

  final String title;
  bool isRequired, isPassword,isemail;
  final double marginBottom   ;

  MyInput({
    Key? key,
    required this.title,
    required this.isRequired ,
    required this.isPassword ,
    required this.isemail ,
    //required this.isRequired ,
    //this.isPassword = false,
  //  this.isemail = true,
    this.marginBottom =20,
  }) : super(key: key);

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  bool isHidden = true;
  bool isemail = false;
  bool isValidEmail = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: widget.marginBottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.title}${widget.isRequired ? '*' : ''}',
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff353636),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: TextFormField(
              autovalidateMode:AutovalidateMode.always ,
              validator:isemail? (input) =>  input!.isValidEmail() ? null : "Check your email":null,
              keyboardType: isemail? TextInputType.emailAddress: TextInputType.text  ,
              obscureText: widget.isPassword && isHidden,
              style: const TextStyle(fontSize: 17),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: const Color(0xffEBEBEB),
                  filled: true,
                  suffixIcon: widget.isPassword
                      ? GestureDetector(
                    onTap: () {
                      isHidden = !isHidden;
                      setState(() {});
                    },
                      child: Icon(isHidden
                        ? Icons.visibility_off
                        : Icons.visibility),
                  )
                      : null),
            ),
          ),
        ],
      ),
    );
  }
}
extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}