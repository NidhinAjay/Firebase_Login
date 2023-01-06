import 'package:flutter/material.dart';

class bio extends StatefulWidget {
  const bio({Key? key}) : super(key: key);

  @override
  State<bio> createState() => _bioState();
}

class _bioState extends State<bio> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text("Nidhin Ajay P",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  ),
                  SizedBox(height: 50,),
                  Text("well in this world.",
                    style:TextStyle(fontWeight: FontWeight.w500,fontSize: 24,),),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
