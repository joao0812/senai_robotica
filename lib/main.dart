import 'package:flutter/material.dart';

void main() {
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // topo Logo senai
                width: 500,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(200, 100),
                      bottomLeft: Radius.elliptical(200, 100)),
                ),
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://cimatec.simplybook.me/uploads/cimatec/image_files/preview/2b74da405d721844a6ddcc84f84723af.png",
                          width: 250,
                        )
                      ]),
                ),
              ),
              Container(
                height: 290,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://sensum.inf.br/wp-content/uploads/2022/02/industria_slider.png'),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 210,
                      height: 30,
                      margin: const EdgeInsets.only(top: 15.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Center(
                        child: Text(
                          'SING UP',
                          style: TextStyle(
                              color: Color.fromRGBO(21, 101, 192, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40.0),
                      child: Text(
                        'Already a member ?',
                        style: TextStyle(
                            color: Color.fromRGBO(164, 164, 164, 1),
                            fontWeight: FontWeight.w300,
                            fontFamily: AutofillHints.name),
                      ),
                    ),
                    Container(child: Text('Sing In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),)
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
