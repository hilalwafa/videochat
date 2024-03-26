import 'dart:math';

import 'package:flutter/material.dart';
import 'package:videochat/vidchat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String conferenceId = "conference_Id";
    String userId=Random().nextInt(1000).toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Video Chat",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VideoChatScreen(
                      conference_id:conferenceId ,
                      user_id: userId,
                    );
                  },));
                },
                child: const Text('Join Video Chat',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  minimumSize: const Size(80, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                  )
              ),),
          )
        ],
      ),
    );
  }
}
