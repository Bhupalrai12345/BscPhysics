import 'package:flutter/material.dart';
import 'package:physics/widgets/homeconatiner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BSC App"), centerTitle: true),
      drawer: Drawer(),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.indigo,
                    child: Image(
                      image: AssetImage("assests/food3.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 HomeContainer(Colors.purple, "assests/food3.png","Syllabus"),
                   HomeContainer(Colors.purple, "assests/food3.png","Notes"),
                     HomeContainer(Colors.purple, "assests/food3.png","Old Questions"),
                      HomeContainer(Colors.purple, "assests/food3.png","Solution")
                ],
              )
            ],
          )),
    );
  }
}
