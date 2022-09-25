

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wooppay_profile/editprofile.dart';
import 'package:wooppay_profile/fund.dart';
import 'package:wooppay_profile/register.dart';
import 'package:wooppay_profile/screens/home/home_screens.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFFEAB2EB)),


      ),

      home: MyRegister()

    );
  }
}





class EditProfileUI extends StatefulWidget {
  const EditProfileUI({Key? key}) : super(key: key);

  @override
  State<EditProfileUI> createState() => _EditProfileUIState();
}


class _EditProfileUIState extends State<EditProfileUI> {

  @override
  Widget build(BuildContext context) {
    final String title = 'Hellow Fultter';
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xFFEAB2EB),
        elevation: 1,

        leading: IconButton(
          icon:
          Icon(

            Icons.edit,
            color: Color(0xff7c7c7c),

          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
          },
        ),
        title: Text('Freedom\nrestaurant',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: Container(



            padding: EdgeInsets.only(left: 15, top: 5, right: 15),

            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },

              child:
              ListView(

                children: [
                  Text('Профиль',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 24,
                  ),
                  ),
                  Center(
                    child: Stack(
                      children: [

                        Container(

                          width: 120,
                          height: 120,

                          decoration: BoxDecoration(

                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1)
                              )
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_960_720.jpg'
                              )
                            )
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Бернар',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 0),
                  Text('Коплю на новый ноутбук',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,

                    ),
                  ),

                  SizedBox(height: 10,

                  ),

                  Text('Сумма 200 000 тг',

                    style: TextStyle(
                      fontSize: 18,

                    ),
                  ),
                  Container(

                    child:


                    Stack(

                      children: [

                        Container(


                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(

                            borderRadius: new BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,

                                    color: Colors.black.withOpacity(0.1)
                                )
                              ],

                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: 5, left: 30, right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Накопилось 150000 тг'),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    SizedBox(width: 10,),

                                  ],
                                ),

                                SizedBox(height: 10,),

                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(

                            height: 15,

                            margin: EdgeInsets.only(left: 20, right: 20, top:25),
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(30),

                              color: Colors.white,

                            ),

                          ),

                        ),
                        Container(

                          height: 15,

                          margin: EdgeInsets.only(left: 20, right: 80, top:25),
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(30),

                            color: Colors.green,

                          ),

                        ),

                      ],

                    ),

                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),

                          ),
                          child: Row(
                            children: [

                              Icon(Icons.history, color: Colors.black, size: 40,)

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 20),
                          padding: EdgeInsets.only(top: 5, bottom: 10, left: 15, right: 30),
                          child: IconButton(
                            icon:
                            Icon(

                              Icons.person_outline,
                              color: Colors.black,
                              size: 35,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Funds()));
                            },
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),

                          ),
                        ),

                      ],

                    ),

                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                          padding: EdgeInsets.only( bottom: 10, left: 18, right: 22),

                          child: Row(
                            children: [
                              Text('История чаевых')

                            ],
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only( bottom: 10, left: 18, right: 22),
                          child: Text('Вывод средств')
                        ),

                      ],

                    ),

                  ),
                  Container(


                    alignment: Alignment.center,
                    decoration: BoxDecoration(

                      borderRadius: new BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,

                            color: Color(0xff9A7DED)
                        )
                      ],
                  ),

                    child: Container(

                      padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Начисление чаевых\n25.09.2020\nНачисление чаевых\n24.09.2020\nНачисление чаевых\n24.09.2020\nНачисление чаевых\n24.09.2020\nНачисление чаевых\n24.09.2020\nНачисление чаевых\n24.09.2020\nНачисление чаевых\n24.09.2020',
                          style: TextStyle(
                          fontSize: 20,
                          ),
                          ),

                          Text('+200 тг\n \n+500 тг\n \n+500 тг\n \n+500 тг\n \n+500 тг\n \n+500 тг\n \n+500 тг\n ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),

                        ],

                      ),

                    ),
                  ),

                ],

              ),

            ),

          ),
      bottomNavigationBar: Container(
      height: 100,
          padding: EdgeInsets.only(top:20, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [


            Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(top: 5,  left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff9486F1)
              ),
              child: Column(

                children:[

                  IconButton(

                    icon:
                    Icon(

                      Icons.qr_code_scanner,
                      color: Colors.black,
                      size: 35,

                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),
                  Text('QR-код',
                  style: TextStyle(
                    fontSize: 12,
                  ),

                  ),

                ],

              ),

            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.only(top: 5, left: 25, right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffF068CA)
              ),
              child: Column(
                children: [
                  IconButton(
                    icon:
                    Icon(

                      Icons.person_outline,
                      color: Colors.black,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileUI()));
                    },
                  ),
                  Text('Профиль',
                    style: TextStyle(
                      fontSize: 12,
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

