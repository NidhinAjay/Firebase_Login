import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class bio extends StatefulWidget {
  const bio({Key? key}) : super(key: key);

  @override
  State<bio> createState() => _bioState();
}

class _bioState extends State<bio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(onTap: () {
            FirebaseAuth.instance.signOut();
          },
              child: Icon(
            Icons.logout,
            color: Colors.black,
          )),
        )
      ], backgroundColor: Colors.white),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 75,
                backgroundImage: AssetImage(
                  'images/nidhin.jpeg',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nidhin Ajay.P",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                    "Innovative and enthusiastic computer science graduate with a passion for critical thinking , problem solving and sharing a love for technology and science. Seeking a position at the digital world, where  this Industrious"
                    " recent computer science graduate with a zeal for innovation can perform well in this world.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black87),
                    textAlign: TextAlign.justify),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
