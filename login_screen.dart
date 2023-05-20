import 'package:flutter/material.dart';
import 'package:todaydo_app/signup_screen.dart';

class loginScreen extends StatelessWidget {

double getSmallDiameter(BuildContext context)=> MediaQuery.of(context).size.width* 2/3;
double getbigDiameter(BuildContext context)=> MediaQuery.of(context).size.width* 7/8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Stack(children: [
        Positioned(
          right: -getSmallDiameter(context)/3,
          top: -getSmallDiameter(context)/3,
          child: Container(
            width: getSmallDiameter(context),
            height: getSmallDiameter(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xff822682),Color(0xffff6da7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ),
          ),
          Positioned(
          left: -getbigDiameter(context)/4,
          top: -getbigDiameter(context)/4,
          child: Container(
            width: getbigDiameter(context),
          height: getbigDiameter(context),
           decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xff822682),Color(0xffff4891)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              ),
              child: Center(
                child: Text('The Merger',
                style: TextStyle(
                  fontFamily: 'pacifico',
                  fontSize: 40,
                  color: Colors.white,
                ),
                ),
              ),
          ),
          ),
            Positioned(
          right: -getbigDiameter(context)/2,
          bottom: -getbigDiameter(context)/2,
          child: Container(
            width: getbigDiameter(context),
            height: getbigDiameter(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xfff3e9ee),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Color(0xffff4891),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        labelText: "Email",
                        enabledBorder: InputBorder.none,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                    ),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xffff4891),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        labelText: "Password",
                        enabledBorder: InputBorder.none,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child: Text("forgot password?",style: TextStyle(
                      color: Color(0xffff4891),
                      fontSize: 12,
                    ),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
                  width: MediaQuery.of(context).size.width*0.5,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                colors: [Color(0xff822682),Color(0xffff4891)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
                    ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                       borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      child: Center(
                        child: Text("sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don,t have an account?",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                     TextButton(
                      onPressed:(){
                        Navigator.push(
                          context,
                           MaterialPageRoute(
                            builder:(context)=>signupScreen(),
                        ),);
                      },
                      child: Text(
                      "sign up",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffff4891),
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}