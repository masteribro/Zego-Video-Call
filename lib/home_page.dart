import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_video_call/video_call_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController callIdController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: callIdController,
            decoration: InputDecoration(
              hintText: "Input Your Call ID"
            ),),
          SizedBox(height: 20,),
          TextField(
            controller: userIdController,
            decoration: InputDecoration(
              hintText: "Input Your User ID"
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoCallPage(
                  callID: callIdController.text,
                  userID: userIdController.text,)),
              );

            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text("Make a video call")),
            ),
          )
          
        ],
      ),
    );
  }
}
