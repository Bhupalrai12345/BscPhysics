import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            color: Colors.indigo,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.35,
                  color: Colors.red,
                  child: Image(
                    image: AssetImage("assests/food1.png"),
                  ),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            " Physics Syllabus",
                            style: _mystyle(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.book,
                            size: 50,
                          ),
                          Text(
                            " Pages : 30",
                            style: _mystyle(),
                          ),
                          Icon(
                            Icons.text_fields,
                            size: 50,
                          ),
                          Text("Size: 0.8 MB", style: _mystyle())
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 48.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  print("1");
                                },
                                child: Text(
                                  "Open",
                                  style: _mystyle(),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.download)),
                          )
                        ],
                      )
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle _mystyle() {
  return TextStyle(fontSize: 19, fontWeight: FontWeight.bold);
}
