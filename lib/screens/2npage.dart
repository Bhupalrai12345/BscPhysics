import 'package:flutter/material.dart';
import 'package:physics/widgets/secondConatiner.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Syllabus" )
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SecondContainer(),
           SecondContainer(),
            SecondContainer(),
             SecondContainer(),

        ],)
      ),
    );
  }
}