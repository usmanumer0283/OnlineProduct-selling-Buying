import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/screens/UserProfile.dart';

import '../constants.dart';
import 'FirstScreen.dart';
import 'Notifications.dart';
import 'Products.dart';
import 'ProductsDetails.dart';


class NotificationBanner extends StatefulWidget {
  @override
  _NotificationBanner createState() => _NotificationBanner();
}
class _NotificationBanner extends State<NotificationBanner> {
  String radioButtonItem = 'ONE';

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  IconButton(
          icon: Image(
            image: AssetImage('assets/back_arrow_white.png'),
            color: Colors.black,
            height: 30.0,
          ),
          onPressed:(){Navigator.of(context).pop();},
        ),
        title: Padding(
          padding: EdgeInsets.only(top:2),
          child: Text('Notifications',style: TextStyle(
            fontSize: 26,
            fontFamily:'Poppins',
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 6.0),
                itemBuilder: (context, index) {
                  return _getListItem(index,context);
                },
              ),
            ),
          ],
        ),
      ),


    );

  }
}


Widget _getListItem(int index, BuildContext context) {
  return  Material(
      child:InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));}, // handle your onTap here
          child:Container(
            margin: EdgeInsets.only(bottom: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5,),
                Text(
                "14",style:  TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 18),),
                Text(
                  "Oct",style:  TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: TagColor
                ),
                )
                ],
              ),
              title: Text(
                'Title$index',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Container(
                  width:300,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: TagColor)),),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text('Order No. 1111-1111111-11$index'),

                  ],
                ),

              )

            ),

          ))


  );



}

 /* @override
  Widget build (BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,

      leading:  IconButton(
        icon: Image(
          image: AssetImage('assets/back_arrow_white.png'),
          color: Colors.black,
          height: 30.0,
        ),
        onPressed:(){Navigator.of(context).pop();},
      ),
      title: Padding(
        padding: EdgeInsets.only(top:2),
        child: Text('Notifications',style: TextStyle(
          fontSize: 26,
          fontFamily:'Poppins',
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    extendBodyBehindAppBar: true,
    body:SingleChildScrollView(
      child:LayoutBuilder(
        builder: (ctx, constraints){
          return Container(
            margin: EdgeInsets.all(20),
            width: constraints.maxWidth*0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: constraints.maxWidth*0.09,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "14",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),

                            new GestureDetector(
                                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                                child:  Text(
                                  "Oct",style:  TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: TagColor
                                ),
                                )),

                          ]
                      ),
                    ),
                    SizedBox(width: 4,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: TagColor)),
                      ),
                      width: constraints.maxWidth*0.8,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "ONE app for All  your tasks",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "Welcome to the world of the Careem Super App",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: TagColor
                              ),
                              ),),

                            SizedBox(height: 20,),
                          ]
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: constraints.maxWidth*0.09,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "14",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),

                            new GestureDetector(
                                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                                child:  Text(
                                  "Oct",style:  TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: TagColor
                                ),
                                )),

                          ]
                      ),
                    ),
                    SizedBox(width: 4,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: TagColor)),
                      ),
                      width: constraints.maxWidth*0.8,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "ONE app for All  your tasks",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "Welcome to the world of the Careem Super App",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: TagColor
                              ),
                              ),),

                            SizedBox(height: 20,),
                          ]
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: constraints.maxWidth*0.09,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "14",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),

                            new GestureDetector(
                                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                                child:  Text(
                                  "Oct",style:  TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: TagColor
                                ),
                                )),

                          ]
                      ),
                    ),
                    SizedBox(width: 4,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: TagColor)),
                      ),
                      width: constraints.maxWidth*0.8,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "ONE app for All  your tasks",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "Welcome to the world of the Careem Super App",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: TagColor
                              ),
                              ),),

                            SizedBox(height: 20,),
                          ]
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: constraints.maxWidth*0.09,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "14",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),

                            new GestureDetector(
                                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                                child:  Text(
                                  "Oct",style:  TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: TagColor
                                ),
                                )),

                          ]
                      ),
                    ),
                    SizedBox(width: 4,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: TagColor)),
                      ),
                      width: constraints.maxWidth*0.8,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "ONE app for All  your tasks",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),),),
                            new GestureDetector(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                              child:  Text(
                                "Welcome to the world of the Careem Super App",style:  TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: TagColor
                              ),
                              ),),

                            SizedBox(height: 20,),
                          ]
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),

              ],
            ),
          );
        },
      ),
    ),



  );
}*/







