
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'Products.dart';

  class ProductChart extends StatefulWidget {
  @override
  _ProductChart createState() => _ProductChart();
  }
  class _ProductChart extends State<ProductChart> {
    @override
    Widget build (BuildContext context) {

      double  _width= MediaQuery.of(context).size.width;
      double  _height= MediaQuery.of(context).size.height;
      String dropdownValue = 'One';
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading:  IconButton(
              icon: Image(
                image: AssetImage('assets/back_arrow.png'),
                color: MainAppColor,
                height: 30.0,
              ),
              color: MainAppColor,
              onPressed:(){
                Navigator.of(context).pop();
              }
          ),
          title: Center(
            child:  Text('Order stats',style: TextStyle(
              fontSize: 20,
              fontFamily:'Poppins',
              color: Colors.black,
            ),
            ),
          ),
        ),

        body:SingleChildScrollView(
            child:Container(
              constraints: BoxConstraints(
                minWidth: double.maxFinite,
              ),
              alignment: Alignment.center,
              // decoration: BoxDecoration(
              //   color: Colors.cyanAccent,
              //   borderRadius: BorderRadius.circular(16.0),
              // ),
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Taimor Sial", style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black
                  ),),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child:InkWell(
                      onTap: () {_settingModalBottomSheet(context);},
                      child: Container(
                        width: 150.0,
                        height: 50.0,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey,

                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 15,),
                            Text('Last 7 Days',style:TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),),
                            Image(
                              image: AssetImage(''),
                            )
                          ],
                        )
                      ),
                    ),
                  ),
                  Text('Orders Stats',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),textAlign: TextAlign.center,),
                  SizedBox(height: 5,),
                  _OrdersStatues(context),
                  SizedBox(height: 10,),
                  
                  Text('List View',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),textAlign: TextAlign.center,),
                   ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(vertical: 6.0),
                      itemBuilder: (context, index) {
                        return _getListItem(index, context);
                      },
                    ),


                ],

              ),
            ), )


    );
  }

    Widget _DropDownlistCity(context) {
      List<String> _review = ['A', 'B', 'C', 'D']; // Option 2
      String _selectedreview;
      return Container(
          width: 500 * MediaQuery.of(context).devicePixelRatio,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),

            ),
          ),
          child: DropdownButton(
            isExpanded: true,
            iconEnabledColor: TagColor,
            hint: Text('  Lifetime',style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: TagColor,

            ),
              textAlign: TextAlign.center,
            ),
            value: _selectedreview,
            onChanged: (newValue) {
              setState(() {
                _selectedreview = newValue;
              });
            },
            items: _review.map((review) {
              return DropdownMenuItem(
                child: new Text(review),
                value: review,
              );
            }).toList(),
          )
      );

    }

    Widget _DropDownlistCategory(context) {
      List<String> _review = ['A', 'B', 'C', 'D']; // Option 2
      String _selectedreview;
      return Container(
          width: 700 * MediaQuery.of(context).devicePixelRatio,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),

            ),
          ),
          child: DropdownButton(
            isExpanded: true,
            iconEnabledColor: TagColor,
            hint: Text('  Lifetime',style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: TagColor,

            ),
              textAlign: TextAlign.center,
            ),
            value: _selectedreview,
            onChanged: (newValue) {
              setState(() {
                _selectedreview = newValue;
              });
            },
            items: _review.map((review) {
              return DropdownMenuItem(
                child: new Text(review),
                value: review,
              );
            }).toList(),
          )
      );

    }



Widget _OrdersStatues(BuildContext context){
  return LayoutBuilder(
      builder: (ctx, constraints){
        return Material(
          child: InkWell(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => Products()));},
            child: Container(
                height: 100.0,
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

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),),
      ),
      context: context,
      builder: (BuildContext bc) {
        return Container(
            height: MediaQuery.of(context).size.height*0.5,
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            color: Colors.transparent,
            child:Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Image(
                            image: AssetImage('assets/back_arrow.png'),
                            color: MainAppColor,
                            height: 30.0,
                          ),
                          color: MainAppColor,
                          onPressed:(){
                            Navigator.of(context).pop();
                          }
                      ),
                       SizedBox(width: 50,),
                      // Flexible(
                      //   flex: 1,
                      //   child:Divider(
                      //     color: Colors.transparent,
                      //   )
                      // ),
                      Text('Order stats',style:  TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  _DropDownlistCity(context),
                  SizedBox(height: 10,),
                  _DropDownlistCategory(context),
                  SizedBox(height: 10,),
                  _DropDownlistCity(context),
                  SizedBox(height: 10,),
                  _DropDownlistCategory(context)
                ],
              ),
            )
        );
      }
  );
}

Widget _getListItem(int index, BuildContext context) {
      return  Container(
                margin: EdgeInsets.only(bottom: 16.0),
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
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New Version'),
                      Text('Order No. 1111-1111111-11$index'),
                      Text('Order No. 1111-1111111-11$index'),
                      Text('Order No. 1111-1111111-11$index'),
                    ],
                  ),
                ),

              );

    }
  }
