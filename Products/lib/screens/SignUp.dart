import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/screens/UserProfile.dart';

import '../constants.dart';
import 'FirstScreen.dart';
import 'Products.dart';
import 'ProductsDetails.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}
class _SignUp extends State<SignUp> {
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  @override
  Widget build (BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(top:120, left: 25, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Text('Sign Up',
              style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),),
            SizedBox(height: 20,),
            Text(
              'Choose account type',style: TextStyle(
              fontFamily: 'Poppins',fontSize: 18,color: TagColor,
            ),
            ),
              SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,


                children:<Widget> [
                  Radio(
                    value: 1,
                    groupValue: id,
                    activeColor: MainAppColor,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'ONE';
                        id = 1;
                      });
                    },
                  ),
                  Text(
                    'PM',
                    style: new TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.0,
                    color: TagColor),
                  ),
                  SizedBox(width: 60,),
                  Radio(
                    value: 2,
                    groupValue: id,
                    activeColor: MainAppColor,

                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'TWO';
                        id = 2;
                      });
                    },
                  ),
                  Text(
                    'PMM',
                    style: new TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.0,
                        color: TagColor
                    ),
                  ),

              ],),
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.only(top:0.0,left: 25, right: 25, bottom: 200),
              width: 900,
              height: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  color: MainAppColor,
                  onPressed: (){},
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white,
                        fontSize: 22),
                  ),
                ),
              ),
            ),

          ],
        ),
      )

    );
  }
}
