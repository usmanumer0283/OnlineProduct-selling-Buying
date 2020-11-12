import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/constants.dart';
import 'package:products/screens/resetpassword.dart';

import 'Change-bank-details.dart';
import 'Dashboard.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double  _width= MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/profile_back_ground.png"),
            fit: BoxFit.cover),
      ),
      child : Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(icon: Image(
            image: AssetImage('assets/back_arrow_white.png'), height: 30,),
            onPressed: (){Navigator.of(context).pop();},),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          width: _width,
          padding: EdgeInsets.only(top: 40),
          child:Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 15,),
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: new DecorationImage(
                          fit: BoxFit.cover,

                          image: new NetworkImage(
                              "https://i.imgur.com/BoN9kdC.png")
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Danish Jabbar',
                    style:TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins'
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
              Expanded(
                child:  Container(
                  width: _width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),),
                    color: Color(0xFFede7f6),
                      ),
                        child: SingleChildScrollView(
                          child:Center(
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:  MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 25,),
                                Container(
                                    constraints: BoxConstraints(
                                      minWidth: double.maxFinite,
                                      maxHeight: 20
                                    ),
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 22),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Flexible(
                                          flex: 1,
                                          child: Text('Profile Settings',
                                            style:  TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                        textAlign: TextAlign.left,
                                      ),)
                                    ],
                                  )

                                ),
                                SizedBox(height: 15,),
                                Container(

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      boxShadow: [BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                   ),],
                                      color: Colors.red
                                    ),
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      changeName(context,_width),
                                      changeCity(context, _width),
                                      changeBankdetails(context, _width),
                                      changeEmailAddress(context, _width),
                                      changePassword(context, _width),
                                    ],
                                  ) ,),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/facebook.png'),
                                      height: 35,
                                    ) ,
                                    SizedBox(width: 50,),
                                    Image(
                                      image: AssetImage('assets/twitter.png'),
                                      height: 35,
                                    ) ,
                                    SizedBox(width: 50,),
                                    Image(
                                      image: AssetImage('assets/instagram.png'),
                                      height: 35,
                                    ) ,
                                    SizedBox(width: 50,),
                                    Image(
                                      image: AssetImage('assets/youtube.png'),
                                      height: 35,
                                    ) ,
                                  ],
                                ),
                                SizedBox(height: 35,),
                                Container(
                                  padding: EdgeInsets.only(left: 12),
                                  child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:<Widget> [
                                      Text('Terms and Conditions - PrivacyPolicy',style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                        textAlign: TextAlign.center,),
                                      SizedBox(height: 20,),
                                      Text('Version 1.0',style: TextStyle(
                                        fontFamily: 'Poppins',

                                        fontSize: 12,
                                      ),),
                                      SizedBox(height: 20,),
                                      Text('2020 all Rights Reserved ',style: TextStyle(
                                        fontFamily: 'Poppins',

                                        fontSize: 12,
                                      ),),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                )


              ),
            ],
          ),
        ),


      ),
    );



  }
}

Widget changeName(BuildContext context, double _width) {
  return  Material(
      child: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ChangeName()));},
          child: Container(
            width: _width*0.9,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //image
                  Flexible(
                    flex: 2,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 2.0,
                        ),
                        margin: EdgeInsets.all(5),
                        width: _width*0.1,

                        decoration: BoxDecoration(
                          color: Color(0xFFede7f6),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/change_name.png'),
                              color:MainAppColor,
                            ),
                          ],
                        )
                    ),
                  ),
                  SizedBox(width:6 ),
                  Flexible(
                    flex: 13,
                    child:  Container(
                        width:_width*0.79,
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black12)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Text("Change name",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),),
                                SizedBox(height: 5,),
                                Text("Danish Jabbar",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                ),),
                              ],
                            ) ,
                            Flexible(
                              flex: 6,
                              child: Divider(
                                thickness: 0,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                                icon: Image(
                                  image: AssetImage('assets/next.png'),
                                  height: 15,
                                  alignment: Alignment.centerRight,
                                ),
                                color: Colors.black,
                                iconSize: 20.0,
                                onPressed: () { }
                            ),
                          ],
                        )),
                  ),
                   //text

        ],
      ) )));


}
Widget changeCity(BuildContext context, double _width) {
  return  Material(
      child: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ChangeCity()));},
          child:Container(
              width: _width*0.9,
              // constraints: BoxConstraints(
              //   minWidth: double.maxFinite,
              //   maxHeight: 65,
              // ),
              decoration: BoxDecoration(
                color: Colors.white,

              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child:  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 2.0,
                      ),
                      margin: EdgeInsets.all(5),
                      width: _width*0.1,

                      decoration: BoxDecoration(
                        color: Color(0xFFede7f6),
                        borderRadius: BorderRadius.circular(5.0),
                      ),

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/location.png'), color:MainAppColor,alignment: Alignment.center,),
                          ]),),
                  ),
                  SizedBox(width:6 ),
                  Flexible(
                    flex: 13,
                    child:   Container(
                      width:_width*0.79,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black12)),),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 10,),

                                Text("Change city",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,

                                ),),
                                SizedBox(height: 5,),
                                Text("Sahiwal Punjab",style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                ),),
                              ],
                            ),
                            Flexible(
                              flex: 6,
                              child: Divider(
                                thickness: 0,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                                icon: Image(
                                  image: AssetImage('assets/next.png'),
                                  height: 15,
                                  alignment: Alignment.centerRight,
                                ),
                                color: Colors.black,
                                iconSize: 20.0,
                                onPressed: () { }
                            )
                          ]),
                    ),
                  ),


                ],
              )
          ) ));

}
Widget changeBankdetails(BuildContext context, double _width) {
  return  Material(
      child: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ChangeBankDetails()));},
          child:Container(
              width: _width*0.9,
             // constraints: BoxConstraints(
             //    minWidth: double.maxFinite,
             //    maxHeight: 65,
             //  ),
            decoration: BoxDecoration(
                color: Colors.white
            ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child:  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 2.0,
                      ),
                      margin: EdgeInsets.all(5),
                      width: _width*0.1,

                      decoration: BoxDecoration(
                        color: Color(0xFFede7f6),

                      ),

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image(
                                image: AssetImage('assets/Bank-account.png'), color:MainAppColor,alignment: Alignment.center),


                          ]),),
                  ),
                  SizedBox(width:6 ),
                  Flexible(
                    flex: 13,
                    child:   Container(
                      width:_width*0.8,
                      decoration: BoxDecoration(  border: Border(bottom: BorderSide(color: Colors.black12)),),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 10,),

                                Text("Change Bank-Details",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),),
                                SizedBox(height: 5,),
                                Text("BOF-0000-000000-000",style: TextStyle(
                                  fontSize: 10,
                                ),),
                              ],
                            ),
                            Flexible(
                              flex: 6,
                              child: Divider(
                                thickness: 0,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                                icon: Image(
                                  image: AssetImage('assets/next.png'),
                                  height: 15,
                                  alignment: Alignment.centerRight,
                                ),
                                color: Colors.black,
                                iconSize: 20.0,
                                onPressed: () { }
                            ),
                          ]),
                    ),
                  ),


                ],
              )
          )));

}
Widget changeEmailAddress(BuildContext context, double _width) {
  return  Material(
      child: InkWell(
          onTap: () {},
          child:Container(
              // height: 60,
              width: _width*0.9,

              // constraints: BoxConstraints(
              //   /*minWidth: _width*0.5,*/
              //   minWidth: double.maxFinite,
              //   maxHeight: 65,
              // ),
            decoration: BoxDecoration(
                color: Colors.white
            ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child:  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 2.0,
                      ),
                      margin: EdgeInsets.all(5),
                      width: _width*0.1,

                      decoration: BoxDecoration(
                        color: Color(0xFFede7f6),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/email.png'),
                              color:MainAppColor,
                              alignment: Alignment.center,

                            ),]),),
                  ),
                  SizedBox(width:6 ),
                  Flexible(
                    flex: 13,
                    child:   Container(  width:_width*0.79 , decoration: BoxDecoration(  border: Border(bottom: BorderSide(color: Colors.black12)),),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 10,),

                                Text("Email Addresses",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),
                                  textAlign: TextAlign.left,),
                                SizedBox(height: 5,),
                                Text("DanishJabbar@gmail.com",style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                ),),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ],
              )


          )));

}
Widget changePassword(BuildContext context, double _width) {
  return  Material(
      child: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ResetPassword()));},
          child:Container(
              // height: 60,
              width: _width*0.9,

              // constraints: BoxConstraints(
              //   /*minWidth: _width*0.5,*/
              //   minWidth: double.maxFinite,
              //   maxHeight: 65,
              // ),
            decoration: BoxDecoration(
                color: Colors.white
            ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child:  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 2.0,
                      ),
                      margin: EdgeInsets.all(5),
                      width: _width*0.1,

                      decoration: BoxDecoration(
                        color: Color(0xFFede7f6),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            Image(
                              image: AssetImage('assets/password.png'), color:MainAppColor,alignment: Alignment.center,),
                          ]),),
                  ),
                  SizedBox(width:6 ),
                  Flexible(
                    flex: 13,
                    child: Container(
                      width:_width*0.79,
                      decoration: BoxDecoration(  border: Border(bottom: BorderSide(color: Colors.black12)),),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 10,),

                                Text("Change Password",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),),
                                SizedBox(height: 5,),
                                Text("*********",style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                ),),
                              ],
                            ),
                            Flexible(
                              flex: 5,
                              child: Divider(
                                thickness: 0,
                                color: Colors.white,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: IconButton(
                                  icon: Image(
                                    image: AssetImage('assets/next.png'),
                                    height: 15,
                                    alignment: Alignment.centerRight,
                                  ),
                                  color: Colors.black,
                                  iconSize: 20.0,
                                  onPressed: () { }
                              ),)
                          ]),

                    ),
                  ),
                ],
              )
          )));

}



