import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/constants.dart';
import 'package:products/screens/Notification.dart';
import 'package:products/screens/UserProfile.dart';

import 'Chart.dart';
import 'Dashboard.dart';
import 'Notifications.dart';
import 'OrderDetails.dart';
import 'Products.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double  _width= MediaQuery.of(context).size.width;

    return Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            body:SingleChildScrollView(
                child:   Container(
                  constraints: BoxConstraints(
                    minWidth: double.maxFinite,
                  ),
                      /*height: 1000,*/
                      decoration: BoxDecoration(
                          color: Color(0xFFede7f6),
                      ),

                      child : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints(
                              minWidth: double.maxFinite,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/profile_back_ground.png"),
                                  fit: BoxFit.fill),),

                            child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(height: 40,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children:<Widget> [

                                        Flexible(
                                          flex:15,
                                          child: Text('Welcome Back,\nDanish Jabbar',
                                            style:TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Poppins'
                                            ),
                                          ),
                                        ),
                                        // SizedBox(width: 50,),
                                        Flexible(
                                          flex: 6,
                                          child: Divider(
                                            color: MainAppColor,
                                          ),
                                        ),

                                        Flexible(
                                          flex: 10,
                                          child: InkWell(
                                            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => UserProfile()));},
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                image: new DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: new NetworkImage("https://i.imgur.com/BoN9kdC.png")
                                                ),
                                                border: Border.all(
                                                    color: Colors.white,
                                                  width: 2
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      width: _width,
                                      margin: EdgeInsets.only(left: 10,right: 10),
                                      padding: EdgeInsets.only(top:10),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        ),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            child: Text('Your Balance',style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600
                                            ),textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]
                              ),
                            ) ,
                          ),
                          Container(
                            constraints: BoxConstraints(
                              minWidth: double.maxFinite,
                            ),
                            margin: EdgeInsets.only(left: 10,right: 10),
                            padding: EdgeInsets.only( bottom: 5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Divider(
                                  color: Colors.black12,
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 1,),
                                _Balance()
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),

                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: _width*0.03,),
                                Text('Orders Stats',style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                ),textAlign: TextAlign.center,),

                                Flexible(
                                  flex: 9,
                                  child: Divider(
                                    color: Color(0xFFede7f6),
                                  ),
                                ),
                                 new InkWell(
                                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ProductChart()));},
                                    child: new Text("View all",style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: MainAppColor),textAlign: TextAlign.center,),),
                                // Flexible(
                                //   flex: 1,
                                //   child: Divider(color: Color(0xFFede7f6),),
                                // ),


                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          _OrdersStatues(context),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: _width*0.03,),
                                Text('Recents Products',style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                ),textAlign: TextAlign.center,),

                                Flexible(
                                  flex: 12,
                                  child: Divider(color: Color(0xFFede7f6),),
                                ),
                                new  InkWell(
                                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
                                    child: new Text("View all",style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: MainAppColor),textAlign: TextAlign.center,),),
                                // Flexible(
                                //   flex: 1,
                                //   child: Divider(),
                                // ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10,left: 10),
                            height: 220,
                            decoration: BoxDecoration(
                              color: Color(0xFFede7f6),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              shrinkWrap: true,

                              padding: EdgeInsets.symmetric(vertical: 6.0),
                              itemBuilder: (context, index) {
                                return _getProductList(index, context, _width);
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('  Recents News',style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),textAlign: TextAlign.start,),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(right: 20,left: 20),
                            height: 260,
                            width: _width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                            child:  ListView.builder(
                              itemCount: 3,
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(vertical: 6.0),
                              itemBuilder: (context, index) {
                                return _getListItem(index, context);
                              },
                            ),
                          ),
                          SizedBox(height: 20,),

                        ],
                      ),
                    )

                ),



            bottomNavigationBar: BottomNavigationBar(
              // currentIndex: 0, //
              // type: BottomNavigationBarType.fixed,
              // unselectedItemColor: TagColor,
              // selectedItemColor:MainAppColor,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Color(0xFF6200EE),
              unselectedItemColor: Colors.white.withOpacity(.6),
              selectedFontSize: 14,
              unselectedFontSize: 14,
              items: [
                BottomNavigationBarItem(
                  icon:IconButton(
                    color: TagColor,
                    onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)  => Home()));},
                    icon: Image(
                      image:AssetImage('assets/Dashboard.png',),
                      color: TagColor,
                      height: 40,
                    ),

                  ),

                  title: new Text('Dashboard',style: TextStyle(color: TagColor,
                      fontSize: 15),),
                ),
                BottomNavigationBarItem(
                  icon:IconButton(
                    color: TagColor,
                    onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)  => Products()));},

                    icon: Image(
                      image:AssetImage('assets/pRODUCTS.png',),
                      color: TagColor,
                      height: 30,
                    ),
                  ),
                  title: new Text('Products',style: TextStyle(
                      color: TagColor,
                      fontSize: 17
                  ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon:IconButton(
                    color: TagColor,
                    onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)  => Products()));},
                    icon: Image(
                      image:AssetImage('assets/Orders.png',),
                      color: TagColor,
                      height: 30,
                    ),
                  ),
                  title: Text('My Orders',style: TextStyle(color: TagColor,
                      fontSize: 17),),
                ),
                BottomNavigationBarItem(
                  icon:IconButton(
                    color: TagColor,
                    onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)  => Products()));},
                    icon: Image(
                      image:AssetImage('assets/notification.png',),
                      color: TagColor,
                      height: 30,
                    ),
                  ),
                  title: Text('News',style: TextStyle(
                      color: TagColor,
                      fontSize: 17),),
                )
              ],),
  );


  }
}
Widget _Balance(){
  return Container(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center ,
      children: <Widget>[
     
      Text('PKR 30,000 ',style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: MainAppColor),)
    ],),
  );

}
Widget _OrdersStatues(BuildContext context){
  return LayoutBuilder(
      builder: (ctx, constraints){
        return Material(
          child: InkWell(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
            child: Container(
                   height: 95.0,
                color: Color(0xFFede7f6),
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
                      child: Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MainAppColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Total Orders',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                          ),
                              textAlign: TextAlign.center,),
                            Flexible(
                              flex: 1,
                              child: Divider(
                                color: MainAppColor,
                              ),
                            ),
                            Text("100",style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                              textAlign: TextAlign.center,),

                          ],),),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
                      child: Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MainAppColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Pending Reviews',style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                              textAlign: TextAlign.center,),
                            Flexible(
                              flex: 1,
                              child: Divider(
                                color: MainAppColor,
                              ),
                            ),
                            Text("90",style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                      ),
                        textAlign: TextAlign.center,),
                  ],),),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
                      child: Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MainAppColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Pending Reviews',style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ), textAlign: TextAlign.center,),
                           Flexible(
                             flex: 1,
                             child: Divider(
                               color: MainAppColor,
                             ),
                           ),
                            Text("90",style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),textAlign: TextAlign.center,),
                  ],),),
                    ),
            ],
          )
      ),
    ),
  );
      });
}
Widget _getProductList(int index, BuildContext context, _width) {
  return  Container(
    height: 100,
    width: _width*0.97,
    color: Color(0xFFede7f6),
    margin: EdgeInsets.only(bottom: 16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            minWidth: double.maxFinite,
            maxHeight: 75,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: TagColor),
            color: Colors.white,
          ),
          margin: EdgeInsets.all(10),
          child:  InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => OrderDetails()));
              },
              child: ListTile(
                leading: Image(image: AssetImage('assets/Dashboard.png'),),
                title: Text('Order No. 1711-1111111-11$index',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('New Version'),
                          Text('Order No. 1211-1111111-11$index'),
                          Text('Order No. 1211-1111111-11$index'),
                        ]),

                  ],
                ),
          ),),),
        InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OrderDetails()));
              },
            child:Container(
              height: 75,
              width: 400,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: TagColor),
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Image(image: AssetImage('assets/Dashboard.png'),),
                title: Text(
                  'Order No. 1111-1111111-11$index',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('New Version'),
                          Text('Order No. 1111-1111111-11$index'),
                          Text('Order No. 1111-1111111-11$index'),

                        ]),
                  ],),
              ),),),

      ],
    ),

  );


}


Widget _getListItem(int index, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: 16.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: InkWell(
        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));}, // handle your onTap here
        child:ListTile(
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
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: TagColor)
              ),
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text('Order No. 1111-1111111-11$index'),

            ],
          ),

        )

    ),),

  ) ;








}





