import 'package:ecom/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  String _email;
  String _password;

  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
         return  Scaffold(

      body: Stack(
        children: [
          Image.asset('images/L3.jpg',fit: BoxFit.fill,height: double.infinity,
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
                key: _formKey,
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
                          child: Text('Signup',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                          onPressed: (){
                            signUP();
                          },


                          minWidth: MediaQuery.of(context).size.width,
                        ),

                      ),
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

  void signUP() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);

        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }catch(e){
        print(e.message);
      }
    }
  }

}
