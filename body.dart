import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(


        children: [


          SizedBox(
          ),

          Text('\n\n\n\n\n\n\nОтсканируйте QR-код',

          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
          ),

          Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,


              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left:20),

                  width: 350,
                  height: 300,

                  decoration: BoxDecoration(
                    color: Color(0xCC7B68EE),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child:
                  Row(

                    children: [

                      Image.asset('images/qr.png'),

                    ],
                    

                  ),
                  
                ),
                
              ],
            ),

          ),
          Text('\nЗдесь можете оставить чаевые ;)', textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        ],
      ),

    );
  }
}

