import 'package:flutter/material.dart';
import 'package:wooppay_profile/screens/home/home_screens.dart';

import 'main.dart';

class Funds extends StatefulWidget {
  const Funds({Key? key}) : super(key: key);

  @override
  State<Funds> createState() => _FundsState();
}

class _FundsState extends State<Funds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e3b75),
        elevation: 1,


      ),
      body: Container(

        color: Color(0xff1e3b75),

        alignment: Alignment.center,
        child: ListView(
          children: [

            Text('\n\n     Баланс',

              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
            Text('\n  200, 000 тг\n\n\n\n',

              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          Container(
              child:

              Stack(
                children: [Container(
                  padding: EdgeInsets.only(top: 363),


                  alignment: Alignment.center,
                  decoration: BoxDecoration(

                    borderRadius: new BorderRadius.only(topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,

                          color: Colors.white

                      )
                    ],

                  ),


                ),

                  Container(

                    margin: EdgeInsets.only(top: 50, left: 15, right: 15,),
                    padding: EdgeInsets.only(top: 15, left: 20,bottom: 150, right: 20,),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Color(0xffF08080),)
                      ]
                    ),

                    child:
                    TextField(

                      style: (TextStyle(color: Color(0xffF08080),) ),
                      decoration: InputDecoration(

                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Номер карты",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),

                    ),



                  ),
                  SizedBox(



                    height: 30,
                  ),




                  Container(
                    height: 30,
                    child: (

                        Text('Вывод',
                            style: TextStyle(

                                fontSize: 20,
                                ),
                          textAlign: TextAlign.center,
                        )
                    ),
                    margin: EdgeInsets.only(top: 275, left: 100, right: 100,),

                    alignment: Alignment.center,

                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [

                          BoxShadow(color: Colors.blue,),
                        ]

                    ),

                  ),
                ],
              ),


          ),
          ],

        ),


      ),

    );
  }
}
