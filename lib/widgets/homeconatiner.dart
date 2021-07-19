import 'package:flutter/material.dart';
import 'package:physics/screens/2npage.dart';

class HomeContainer extends StatelessWidget {
  final Color containerColor;
  final String imagepath;
  final String text;

HomeContainer(this.containerColor, this.imagepath,this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=> SecondPage()));
        },

              child: Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(imagepath),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
               text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
