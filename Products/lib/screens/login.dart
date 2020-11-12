import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:products/screens/Home.dart';
import '../constants.dart';
import 'SignUp.dart';


class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}
class _Login extends State<Login> {


  @override
  Widget build (BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child:  Container(
            margin: EdgeInsets.only(top:120, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Text('Login',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: TagColor
                  ),),
                SizedBox(height: 80,),
                TextFormField(
                  decoration: InputDecoration(
                    border: new UnderlineInputBorder(
                        borderSide: new BorderSide(
                            color: Colors.black
                        )
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: TagColor),

                  ),
                  style: TextStyle(color: TagColor),

                ),
                SizedBox(height: 40,),
                PasswordField(

                  color: MainAppColor,
                  hasFloatingPlaceholder: true,
                  pattern: r'.*[@$#.*].*',

                  border: UnderlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black
                      )
                  ),
                  errorMessage: 'Incorrect Password',
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new GestureDetector(
                      onTap: () {},
                      child: new Text("Forgot password?",style: TextStyle(
                          fontSize: 13,
                          color: Colors.black

                      ),textAlign: TextAlign.right,
                      ),),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 900,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      color: MainAppColor,
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  => Home()));},
                      child: Text('LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(' I don"t have account ' ),
                    new InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)  => SignUp()));},
                      child: new Text("Sign Up",style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.black

                      ),textAlign: TextAlign.right,
                      ),),
                  ],
                ),


              ],
            ),
          ),
        )


    );
  }
}
