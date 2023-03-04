import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_suz/shared/design/my_container.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: IconButton(
                  onPressed:() {
                    setState(() {
                      _counter++;
                    });


                  }, //_incrementCounter,
                  icon: Icon(Icons.add),
                  color: Colors.white),
              color: Colors.blueAccent,
              width: double.maxFinite,
              height: 70,
            ),
            SizedBox(height: 10,),
            Expanded(
              child:  ListView.builder(
                itemBuilder: (context, index) =>  FadeIn(duration: Duration(seconds: 3),child: Stack(alignment: Alignment.centerRight,
                  children: [
                    MyContainer(number:index+1 ,),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _counter--;
                          });

                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ],
                )),

                itemCount: _counter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
