import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/screens/UserProfile.dart';

import '../constants.dart';
import 'FirstScreen.dart';
import 'Products.dart';
import 'ProductsDetails.dart';


class Notifications extends StatefulWidget {
  @override
  _Notifications createState() => _Notifications();
}
class _Notifications extends State<Notifications> {
  String radioButtonItem = 'ONE';



  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,

          elevation: 0.0,
          leading:  IconButton(
            icon:  Image(
              image: AssetImage('assets/back_arrow.png'),
              color: Colors.black,
              height: 30.0,
            ),
            color: Colors.black,
            onPressed:(){Navigator.of(context).pop();},
          )
      ),
      extendBodyBehindAppBar: true,
      body:SingleChildScrollView(
        child:LayoutBuilder(
          builder: (ctx, constraints){
            return Container(
              margin: EdgeInsets.all(30),
              width: constraints.maxWidth*0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 80,),
                  Text(
                    "ONE app for ALL  your tasks",style:  TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 32),),
                  Text(
                    "Welcome to the world of the Careem Super App A paragraph is a group of words put together to form a group that is usually longer than a sentence. Paragraphs are often made up of several sentences. There are usually between three and eight sentences. Paragraphs can begin with an indentation (about five spaces), or by missing a line out, and then starting again. This makes it easier to see when one paragraph ends and another begins.",style:  TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: TagColor
                  ),
                  ),
                  Text(
                    "Paragraphs can begin with an indentation (about five spaces), or by missing a line out, and then starting again. This makes it easier to see when one paragraph ends and another begins.",style:  TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: TagColor
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30),
                    width: constraints.maxWidth*1.9,
                    height: 55,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        color: Colors.green,
                        onPressed: (){},
                        child: Text(
                          'Watch the video',
                          style: TextStyle(color: Colors.white,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            );
          },
        ),
      ),



    );
  }
}






