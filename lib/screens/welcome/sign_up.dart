import 'package:dokter_ku/screens/welcome/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new,
          size: 20,
          color: Colors.black38,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Register Your Account Here",
                  style: TextStyle(
                    fontSize:18,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ],),
              Column(
              children: [
              inputFile(label: "Username"),
              inputFile(label: "Email",),
              inputFile(label: "Password", obscureText: true),
              inputFile(label: "Confirm Password",  obscureText: true),

            ],),
            Container(
              decoration:   BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                        top: BorderSide(color: Colors.black12),
                        left: BorderSide(color: Colors.black12),
                        right: BorderSide(color: Colors.black12),

                      )
                    ),
                    child:  MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){},
                      color: Colors.orange[700],
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,

                        ),
                      ),
                    ),
            ),
            Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have an Account?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
                      Text(" Sign In", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.orange[700])),
                    ],
                  ),
            ],
            ),
        )),
    );
  }
}