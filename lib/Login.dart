import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/weather.dart';

class Login extends StatelessWidget{
  var email,password,token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
        "Weather App",
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
                ),
               ),
        backgroundColor: Colors.deepPurpleAccent,
        ),
      body: Container(


        child: Container(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50,),
                  Text("Welcome,",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  SizedBox(height: 6,),
                  Text("Sign in to continue!",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),),
                ],
              ),

              SingleChildScrollView(

                child: Column(

                  children: <Widget>[


                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),

                          borderSide: BorderSide(

                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide(
                              color: Colors.black,
                            )
                        ),
                      ),
                      onChanged: (val){
                        email=val;
                      },
                    ),

                    SizedBox(height: 16,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 14,color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide(
                              color: Colors.black,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 6,),
                    Align(
                      alignment: Alignment(-1.0,0.4),

                      child: FlatButton(
                        onPressed: (){
                        },
                        textColor: Colors.deepPurpleAccent,
                        child: Text('Forgot Password?'),
                      ),

                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 50,
                      width: 200,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherApp()));

                        },
                        padding: EdgeInsets.all(0),
                        child: Ink(
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(26),

                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: BoxConstraints(maxWidth: double.infinity,minHeight: 50),
                            child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      height: 50,
                      width: double.infinity,
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}