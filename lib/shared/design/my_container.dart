import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({Key? key, required this.number,}) : super(key: key);
  int number;
  //int lesscounter;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.indigo,
          ),
          height: 70,
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Expanded(
                    child: Align(
                        child: Text(
                          "$number",
                          style: TextStyle(fontSize: 20),
                        ),
                        alignment: AlignmentDirectional.centerStart)),

              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
