import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:products/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'Dashboard.dart';
import 'FirstScreen.dart';
import 'Home.dart';
import 'Notification.dart';
import 'Notifications.dart';
import 'OrderDetails.dart';
import 'ProductsDetails.dart';

class Products extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Products> {
  final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'usman'];

  /*final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];*/
  TabController _controller;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: Column(
          children: <Widget>[
            _getSearchBar(),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 6.0),
                itemBuilder: (context, index) {
                  return _getListItem(index, context);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        //
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: TagColor,
        selectedItemColor: MainAppColor,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              color: TagColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Image(
                image: AssetImage('assets/Dashboard.png',),
                color: TagColor,
                height: 40,
              ),

            ),

            title: new Text('Dashboard', style: TextStyle(color: TagColor,
                fontSize: 15),),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              color: TagColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Products()));
              },

              icon: Image(
                image: AssetImage('assets/pRODUCTS.png',),
                color: TagColor,
                height: 40,
              ),
            ),
            title: new Text('Products', style: TextStyle(
                color: TagColor,
                fontSize: 17
            ),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(

              icon: Image(
                image: AssetImage('assets/Orders.png',), color: TagColor,
                height: 40,
              ),
            ),
            title: Text('My Orders', style: TextStyle(color: TagColor,
                fontSize: 17),),
          ),
          BottomNavigationBarItem(

            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NotificationBanner()));
              },
              icon: Image(
                image: AssetImage('assets/notification.png',), color: TagColor,
                height: 40,
              ),
            ),


            title: Text(
              'News', style: TextStyle(color: MainAppColor, fontSize: 17),),
          )
        ],
      ),

    );
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
              padding: EdgeInsets.only(right: 20,left: 20),

            color: Colors.transparent,

            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Select market',style:  TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                        textAlign: TextAlign.left,
                      ),
                      Flexible(
                        flex: 2,
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child:new Text('Reset',style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: MainAppColor,
                            fontWeight: FontWeight.w600
                        ),),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  _DropDownlistCity(context),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Select category',style:  TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                        textAlign: TextAlign.left,
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  _DropDownlistCategory(context)
                ],
              ),
            )
          );
        }
    );
  }


  Widget _getListItem(int index, BuildContext context) {
    return Material(
        child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProdutsDetails()));
            },
            child: Container(
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

            ))


    );
  }
  Widget _getSearchBar() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: new EdgeInsets.all(5),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          color: TagColor,

          icon: Image(
            image: AssetImage('assets/filter.png',),
            height: 25,
          ),
          onPressed: () {
            _settingModalBottomSheet(context);
          },
        ),
        prefixIcon: IconButton(
            color: TagColor,
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/search.png',),
              height: 25,
            )
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide:
            BorderSide(color: TagColor, style: BorderStyle.solid)),
        hintText: "Search for dish or restaurant",
        hintStyle: const TextStyle(color: TagColor),
      ),
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
          hint: Text('  USA',style: TextStyle(
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
          hint: Text('  Beauty & Personal',style: TextStyle(
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
}



