import 'package:ecom/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Image.asset('images/L2.jpg',fit: BoxFit.fill,height: double.infinity,
            width: double.infinity,),
         Container(
           color: Colors.black.withOpacity(0.4),
           height: double.infinity,
           width: double.infinity,
         ),
          Padding(
            padding: EdgeInsets.only(top:200.0),
            child: Center(

              child: Form(
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child:Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.5),
                          elevation: 0.0,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              // ignore: missing_return
                              validator: (input){
                                if(input.isEmpty){
                                  return'Please Input Your Email';
                                }
                              },
                              onSaved: (input) => _email = input,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                icon: Icon(Icons.email),



                              ),
                            ),
                          ),
                        )
                    ),


                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child:Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.5),
                          elevation: 0.0,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              validator: (input){
                                if(input.length < 6 ){
                                  return "Your Password needs to be a atleast 6 characters";
                                }
                              },
                              onSaved: (input) => _password = input,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                icon: Icon(Icons.lock_outline),



                              ),
                              obscureText: true,
                            ),
                          ),
                        )
                    ),
                    Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blue,
                        elevation: 0.0,
                        child: MaterialButton(
                          child: Text('Login',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                          onPressed: (){

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_){
                                  return Home();
                                }
                            ));
                          },


                          minWidth: MediaQuery.of(context).size.width,
                        ),

                      ),
                    ),
                   Padding (
                       padding: EdgeInsets.only(top: 20.0,left: 25.0,right: 25.0),

                        child:InkWell(

                          child: Text('Forgot Password',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
                        )

                    ),

                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Dont have an account? click here to',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                        SizedBox(width: 15.0,),
                        InkWell(
                          child: Text('sign up',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                         onTap: (){},
                        )
                      ],
                    ),

                    Expanded(child: Container(),),
                    Divider(color: Colors.white,),

                    Text('Other Login Option',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0)),

                    Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.red,
                        elevation: 0.0,
                        child: MaterialButton(
                          child: Text('Google',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                          onPressed: (){},
                          minWidth: MediaQuery.of(context).size.width,
                        ),

                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),


        ],
      ),


    );
  }

  Future<void> signIn() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        UserCredential user = await   FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
      }catch(e){
        print(e.message);
      }

    }
  }
}

