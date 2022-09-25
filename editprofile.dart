import 'package:flutter/material.dart';
import 'package:wooppay_profile/main.dart';
import 'package:wooppay_profile/screens/home/home_screens.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEAB2EB),
        elevation: 1,
        leading: IconButton(
          icon: Icon(

            Icons.home,
            color: Color(0xff7c7c7c),

          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileUI()));
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
      body: Scaffold(

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
