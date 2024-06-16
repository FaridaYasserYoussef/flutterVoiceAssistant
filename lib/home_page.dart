import 'package:flutter/material.dart';
import 'palette.dart';
import 'package:voiceassistant/ReusableWidgets/SuggestionBox.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime currentTime = DateTime.now();

  String getWelcomePhrase(){
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 18) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Echo"),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.list), onPressed: (){},),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, 
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      child: Icon(Icons.mic),
       ),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: Image(image: AssetImage("assets/images/assistant.png"), width: 140, height: 140, )),

          ),

          Container(
            width: 350,
            height: 100,
            padding: EdgeInsets.all(30),
            child: Text(getWelcomePhrase() + ", How can I help?", style: TextStyle(fontSize: 20),),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width:  2
              ) 
            ),
          ),
          SizedBox(height: 10,),

          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
             children: [
            SuggestionBox("ChatGPT", "Stay organized and informed with ChatGPT", Pallete.firstSuggestionBoxColor),
            SuggestionBox("Dall-E", "Stay inspired and get creative with Dall-E", Pallete.secondSuggestionBoxColor),
            SuggestionBox("Voice Assistant", "Get the best of both worlds with a voice assistan powered by ChatGPT and Dall-E", Pallete.thirdSuggestionBoxColor),
          
          
          
            ],),
          )

         

       ]),
    );
  }
}