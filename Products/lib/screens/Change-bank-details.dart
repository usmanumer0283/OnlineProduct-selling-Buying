import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/constants.dart';

import 'Dashboard.dart';



class ChangeBankDetails extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,

          elevation: 0.0,
          leading:  IconButton(
            icon:  Image(
              image: AssetImage('assets/back_arrow.png'),
              color: MainAppColor,
              height: 30.0,
            ),
            color: MainAppColor,
            onPressed:(){Navigator.of(context).pop();},
          )
      ),
      extendBodyBehindAppBar: true,
      body:SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.only(right: 32, left: 32, top:120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[

                Text("Change bank details", style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,),

              SizedBox(height: 35,),
              TextFormField(
                decoration: InputDecoration(
                  border: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black
                      )
                  ),
                  hintText: "BOP-0000-00000-00000-00000",
                  hintStyle: TextStyle(color: TagColor),

                ),
                style: TextStyle(color: Colors.black),

              ),


              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 900,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    color: MainAppColor,
                    onPressed: (){},
                    child: Text(
                      'UPDATE',
                      style: TextStyle(color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


