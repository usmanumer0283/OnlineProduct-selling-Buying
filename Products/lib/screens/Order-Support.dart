import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/constants.dart';

import 'Dashboard.dart';



class OrderSupport extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading:  IconButton(
              icon: Image(
                image: AssetImage('assets/back_arrow.png'),
                color: MainAppColor,
                height: 30.0,
              ),
              color: MainAppColor,
              onPressed:(){Navigator.of(context).pop();},

            ),
            title: Center(
              widthFactor: 10,
              child: Text('Order Support',style: TextStyle(
                fontSize: 18,
                fontFamily:'Poppins',
                color: Colors.black,
              ),
                textAlign: TextAlign.center,
              ),
            )

        ),
        extendBodyBehindAppBar: true,
        body:SingleChildScrollView(
          child: Container(
          /*padding: EdgeInsets.only(bottom: 100),*/
            margin: EdgeInsets.only(left: 12,right: 12,top:100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Material(
                  elevation: 4,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Subject",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                        color:TagColor,
                      ),
                    ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: TagColor,
                          width: 0.0,
                        ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Material(
                elevation: 4,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                    color: TagColor,
                  ),
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText:  "Describe your problem.",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color:TagColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: TagColor,
                        width: 0.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
                new     InkWell(
                  onTap: () {},
                  child: new Text('Attach Screenshot',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: MainAppColor,
                  ),),),

              Container(
                margin: EdgeInsets.only(left: 25,right: 25,top:30),
                width: 900,
                height: 55,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    color: MainAppColor,
                    onPressed: (){},
                    child: Text(
                      'SUBMIT TICKET',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                      fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),)

    );
  }
}


