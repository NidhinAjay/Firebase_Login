import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void dispose()
  {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black26,
            radius: 70,
            child: Icon(Icons.person, color: Colors.white, size: 120,),
          ),

          SizedBox(height: 20,),
          Text("Log In", style: TextStyle(color: Colors.black, fontSize: 25)
            ,),
          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  label: Text("Email"), border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
                  hintText: "abc@gmail.com"
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                label: Text("Password"),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                signin();
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>bio(),),);
              }, child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 15,
              ),
              child: Text(
                "Login now", style: TextStyle(color: Colors.white, fontSize: 18)
                ,),
            ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), backgroundColor: Colors.black26),
              // backgroundColor:MaterialStateProperty.all(Colors.black26)
            ),
          ),
          SizedBox(height: 20,),
          TextButton(onPressed: () {},
            child: Text(
              "Forgot password?", style: TextStyle(color: Colors.black),),),
        ],
      ),
    );
  }

  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text.trim(),
      password: password.text.trim(),
    );
  }
}
