import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products/constants.dart';

import 'Dashboard.dart';



class AddNewOrder extends StatelessWidget {
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
            onPressed:(){
              Navigator.of(context).pop();

            }

          ),
          title: Center(
            child:  Text('Add new order',style: TextStyle(
              fontSize: 20,
              fontFamily:'Poppins',
              color: Colors.black,
            ),
          ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child:Container(
            width: 500 * MediaQuery.of(context).devicePixelRatio,
            margin: EdgeInsets.only(left: 8,right: 8,top:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Text('Order Screenshot',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color : TagColor,
                  ),),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.loose,
                      child:Expanded(
                        flex: 6,
                        child:Image(
                        image: AssetImage('assets/pic-image.png'),
                        width: 85 * MediaQuery.of(context).devicePixelRatio,
                        height: 180,
                        fit: BoxFit.fill,
                      ),
                    ), ),

                    SizedBox(width: 5,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Expanded(
                        flex: 4,
                        child: GestureDetector(
                          onTap: (){},
                          child: Image(
                          image: AssetImage('assets/upload-button.png'),
                          width: 140,
                          height: 180,
                          fit: BoxFit.fill,

                        ),

                      ) ,
                    ))
                  ],
                ),
                SizedBox(height: 10,),
                Text('Buyer Name',style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color : TagColor,

                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "John Deo",
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
                SizedBox(height: 8,),
                Text('Order Number',style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color : TagColor,
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "00000-00000000-00",
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

                SizedBox(height: 8,),
                Text('PayPal',style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color : TagColor,

                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "JohnDeo@gmail.com",
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

                SizedBox(height: 8,),
                Text('Choose review type',style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color : TagColor,
                ),),
                SizedBox(height: 8,),
                Container(
                  width: 500.0,
                  child:_dropdownList(),
                ),

                SizedBox(height: 10,),

                Container(
                  margin: EdgeInsets.only(left: 5,right: 5,top:20),
                  width: 900,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 40),
                      color: MainAppColor,
                      onPressed: (){},
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ) ,
        )

    );
  }
}



class _dropdownList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __dropdownList();
}
class __dropdownList extends State<_dropdownList> {
  List<String> _review = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedreview; // Option 2

  @override
  Widget build(BuildContext context) {

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
        hint: Text('  Text review',style: TextStyle(
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