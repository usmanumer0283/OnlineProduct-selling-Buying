import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'Dashboard.dart';



class ChangeName extends StatelessWidget {
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
              onPressed: (){Navigator.of(context).pop();},
            )
        ),
        extendBodyBehindAppBar: true,
        body:Container(
          width: 500 * MediaQuery.of(context).devicePixelRatio,
          margin: EdgeInsets.only(left: 20, right: 20,bottom :100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text("Change name", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),),

              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  border: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black
                      )
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid
                      )
                  ),

                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.black),

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
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18),
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
