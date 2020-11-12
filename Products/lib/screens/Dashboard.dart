import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/screens/UserProfile.dart';
import 'package:products/screens/resetpassword.dart';
import 'package:products/screens/slidingup.dart';

import '../constants.dart';
import 'AddNewOrder.dart';
import 'Change-bank-details.dart';
import 'FirstScreen.dart';
import 'Home.dart';
import 'Order-Support.dart';
import 'OrderDetails.dart';
import 'ProductSupport.dart';
import 'Products.dart';
import 'ProductsDetails.dart';
import 'SecondScreen.dart';
import 'SignUp.dart';
import 'Support.dart';
import 'login.dart';
import 'Notifications.dart';



class Dashboard extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(

        body:SingleChildScrollView(
          child: Container(
              width: 500 * MediaQuery.of(context).devicePixelRatio,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('DashBoard',style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: MainAppColor,
                  ),
                    textAlign: TextAlign.center,
                  ),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Notifications()));},
                    child: new Text("Notification",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Home()));},
                    child: new Text("Home",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => SlidingUpPanelExample()));},
                    child: new Text("SlidingUpPanelExample",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => UserProfile()));},
                    child: new Text("UserProfilePage",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => AddNewOrder()));},
                    child: new Text("AddNewOrder",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ChangeCity()));},
                    child: new Text("ChangeCity",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => OrderSupport()));},
                    child: new Text("Order support",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => OrderDetails()));},
                    child: new Text("OrderDetails",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
                    child: new Text("Products",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => OrderDetails()));},
                    child: new Text("OrderDetails",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ProdutsDetails()));},
                    child: new Text("ProdutsDetails",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ProductSupport()));},
                    child: new Text("ProductSupport",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ResetPassword()));},
                    child: new Text("ResetPassword",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ChangeName()));},
                    child: new Text("ChangeName",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => SignUp()));},
                    child: new Text("SignUp",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Support()));},
                    child: new Text("Support",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Login()));},
                    child: new Text("Login",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),
                  new GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => ChangeBankDetails()));},
                    child: new Text("ChangeBankDetails",style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                    ),),),

                ],)

          ),
        ) ,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, //
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: TagColor,
        selectedItemColor:MainAppColor,
        items: [
          BottomNavigationBarItem(
            icon:IconButton(
              color: TagColor,
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)  => Dashboard()));},
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
                height: 40,
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
                  MaterialPageRoute(builder: (context)  => UserProfile()));},
              icon:Image(
              image:AssetImage('assets/Orders.png',),
              color: TagColor,
              height: 40,
            ),),

            title: Text('My Profile',style: TextStyle(color: TagColor,
                fontSize: 17),),
          ),
          BottomNavigationBarItem(
            icon:IconButton(
              color: TagColor,
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  => ProdutsDetails()));},
              icon: Image(image:AssetImage('assets/notification.png',),  color: TagColor,
              height: 40,
            ),),
            title: Text('News',style: TextStyle(color: MainAppColor,fontSize: 17),),
          )
        ],
      ),
    );
  }
}
