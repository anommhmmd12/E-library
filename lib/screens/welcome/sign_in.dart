import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({ Key? key }) : super(key: key);

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Login to Your Account",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),

                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(children: [
                    inputFile(label: "Email"),
                    inputFile(label: "Password", obscureText: true),
                  ],),
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    
                    decoration: 
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                        top: BorderSide(color: Colors.black12),
                        left: BorderSide(color: Colors.black12),
                        right: BorderSide(color: Colors.black12),

                      )
                    ),
                    child: MaterialButton(
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont Have an Account?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
                      Text(" Sign Up", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.orange[700])),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icons/welcome.png"),
                        fit: BoxFit.fitHeight
                         )
                    ),
                  )
              ],
            ))
          ],
        ),
      ),
    );
  }
  
}

Widget inputFile({label, obscureText=false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.black,

        ),
      ),
      SizedBox(height: 20,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(
              color: Colors.black26
            )
             ),
             border: OutlineInputBorder(
               borderSide:BorderSide(color: Colors.black26))

        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}