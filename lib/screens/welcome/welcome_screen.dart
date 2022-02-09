import 'package:dokter_ku/screens/welcome/sign_up.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical:50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Halo ini adalah peroject bbla bla bla",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,

                    ),
                    )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/welcome.png")
                    
                  )
                ),
              ),
              Column(
                children: [
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                    },
                    shape: RoundedRectangleBorder(
                      side:BorderSide(
                        color: Colors.black12
                      ),
                      borderRadius: BorderRadius.circular(50) 
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,

                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                    },
                    color: Colors.orange[700] ,
                    shape: RoundedRectangleBorder(
                      side:BorderSide(
                        color: Colors.black12
                      ),
                      borderRadius: BorderRadius.circular(50) 
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,

                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ) )
    );
  }
}