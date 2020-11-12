import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'AddNewOrder.dart';
import 'Dashboard.dart';
import 'Order-Support.dart';
import 'OrderDetails.dart';
import 'Products.dart';
import 'Support.dart';

class ProdutsDetails extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    double  _width= MediaQuery.of(context).size.width;
    double  _heigth= MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text('Products Details',
              style: TextStyle(
              color: TagColor,
            ),
            ),
            elevation: 0.0,
            leading:  IconButton(
              icon: Icon(Icons.arrow_back),
              color: MainAppColor,
              onPressed: (){Navigator.of(context).pop();},
            )
        ),
        extendBodyBehindAppBar: true,
        body:SingleChildScrollView(
            child:Center(
              child: Container(
                alignment: Alignment.center,
                width: _width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 100),

                      constraints: BoxConstraints(
                        minWidth: double.maxFinite,
                        maxHeight: 200,
                      ),
                      child: _ImageCarousel(_width),
                    ),
                    SizedBox(height: 20,),
                    Divider(
                      color: TagColor,
                    ),
                    SizedBox(height: 10,),
                    _productInformation(context, _width),



                  ],
                ),

              ),
            ),),

      bottomNavigationBar:Container(
        constraints: BoxConstraints(
          minWidth: double.maxFinite,
          maxHeight: _heigth*0.09,
        ),
        alignment: Alignment.center,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Flexible(
                flex: 4,
                child:  InkWell(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Support()));},
                  child:Container(
                        constraints: BoxConstraints(
                          minWidth: 150,
                          maxHeight: _heigth*0.09,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 0.0, color: Colors.black),
                            left: BorderSide(width: 0.0, color:  Colors.black),
                            right: BorderSide(width: 0.0, color: Colors.black),
                            bottom: BorderSide(width: 0.0, color: Colors.black),
                          ),
                        ),

                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [
                          Flexible(
                            flex: 6,
                            child: IconButton(
                              icon: Image(
                                  image: AssetImage('assets/support.png'),
                                  height : 100
                              ),
                              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  => OrderSupport()));},
                            ),),
                            Flexible(
                              flex: 4,
                              child: InkWell(
                                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => OrderSupport()));},
                                child: Text('Support', style: TextStyle(
                              fontFamily: 'Poppins',
                              color: MainAppColor,
                              fontSize: 11,
                            ),),
                            ),),
                          ],
                        )

                    ),),),
                Flexible(
                  flex: 6,
                  child: InkWell(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => OrderSupport()));},
                    child:Container(
                        constraints: BoxConstraints(
                          minWidth: 300,
                          maxHeight: _heigth*0.09,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF89bff9),
                          border: Border(
                            top: BorderSide(width: 0.0, color: Colors.black),
                            left: BorderSide(width: 0.0, color:  Colors.black),
                            right: BorderSide(width: 0.0, color: Colors.black),
                            bottom: BorderSide(width: 0.0, color: Colors.black),
                          ),
                        ),

                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [
                            new InkWell(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
                              child: new Text("View all orders",style: TextStyle(
                                fontFamily: 'Poppins',fontSize: 13,
                                color: Colors.white,),textAlign: TextAlign.center,),),
                          ],
                        )

                    ),),),
                Flexible(
                  flex: 6,
                  child: InkWell(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => AddNewOrder()));},
                    child:Container(
                        constraints: BoxConstraints(
                          minWidth: 400,
                          maxHeight: _heigth*0.09,
                        ), alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: MainAppColor,
                          border: Border(
                            top: BorderSide(width: 0.0, color: Colors.black),
                            left: BorderSide(width: 0.0, color:  Colors.black),
                            right: BorderSide(width: 0.0, color: Colors.black),
                            bottom: BorderSide(width: 0.0, color: Colors.black),
                        ),
                        ),

                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [
                            new InkWell(
                              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => AddNewOrder()));},
                              child: new Text("Add new orders",style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 13,),textAlign: TextAlign.center,),),

                          ],
                        )

                    ),),),


              ],
            ),
          ));
  }
}

Widget _ImageCarousel(double _width) {
  return new Container(
    constraints: BoxConstraints(
      minWidth: double.maxFinite,
      maxHeight: 200,
    ),
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 16.0,
    ),
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 2,
          child:  new Carousel(
      boxFit: BoxFit.fill,

      images: [
        AssetImage('assets/Dashboard.png'),
        AssetImage('assets/twitter.png'),

      ],
      autoplay: false,
    ),
        ),]),
  );
}
Widget _productInformation (BuildContext context, double _width){
  return Container(
    constraints: BoxConstraints(
      minWidth: double.maxFinite,
    ),
    alignment: Alignment.center,

    padding: EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 16.0,
    ),

    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Text('Price:  ',style: TextStyle(
                  fontSize: 20,
                  color: TagColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                ),),),
                Flexible(
                  flex: 2,
                  child: Text("Rs 342",style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  color: MainAppColor,
                ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                  'Bicycle  Frame  Bag  Bike  HandleBar  \nBag', style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: TagColor,
                ),
                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sold By :', style: TextStyle(
                  fontSize: fontMeduim,
                  color: MainAppColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),),
                Text(' ARCRIST-Shop')
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Availibility :',
                  style: TextStyle(
                    fontSize: fontMeduim,
                    color: TagColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),),
                Text(' In Stock', style: TextStyle(
                  fontSize: fontMeduim,
                  color: Colors.green,
                ),)

              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Refund Condition :', style:
                TextStyle(
                  color : TagColor,
                  fontSize: fontMeduim,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text(
                  ' After Review',
                  style: TextStyle(
                      fontSize: fontMeduim,
                      color: MainAppColor,
                      fontWeight: FontWeight.bold

                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Market :', style:
                TextStyle(
                  color : TagColor,
                  fontFamily: 'Poppins',
                  fontSize: fontMeduim,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text(
                  ' UK',
                  style: TextStyle(
                      fontSize: fontMeduim,
                      color: MainAppColor,
                      fontWeight: FontWeight.bold

                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Text('Commission',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: fontMeduim,
                fontWeight: FontWeight.w700,
                color: TagColor,
              ),),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Text('Text : ',
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: fontMeduim,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: TagColor,
                  ),),
                Text('400 PKR',
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: fontMeduim,
                    color: MainAppColor,
                  ),),
                Flexible(
                  flex: 5,
                  child: Divider(),
                ),
             Text('Picture : ',
                    overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: fontMeduim,
                    fontWeight: FontWeight.w700,
                    color: TagColor,
                  ),),
                Text('500 PKR',softWrap: true,
                    overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: fontMeduim,
                    color: MainAppColor,
                  ),),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Video : ',
                  style: TextStyle(
                    fontSize: fontMeduim,
                    color: TagColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),),
                Text('400 PKR',
                  style: TextStyle(
                    fontSize: fontMeduim,
                    color: MainAppColor,
                  ),),
                Flexible(
                  flex: 5,
                  child: Divider(),
                ),
                Text('Now Review : ',
                  style: TextStyle(
                    fontSize: fontMeduim,
                    color: TagColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),),
                Text('500 PKR',
                  style: TextStyle(
                    fontSize: fontMeduim,
                    color: MainAppColor,
                  ),),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(
                  'Instructions :', style:
                TextStyle(
                  color : TagColor,
                  fontSize: fontMeduim,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
                ),
                Flexible(
                  flex: 6,
                  child: Text('Ultimately, a paragraph  ',
                  style: TextStyle(
                      fontSize: fontMeduim,
                      color: TagColor,
                      fontWeight: FontWeight.bold
                  ),
                ),
                ),
              ],
            ),
          ]
      ),


  );
}



