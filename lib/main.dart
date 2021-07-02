import 'package:flutter/material.dart';
import 'package:qbankadminapp/components/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qbankadminapp/screen/dictionary.dart';
import 'package:qbankadminapp/screen/repeated_question.dart';
import 'package:qbankadminapp/screen/topicwise_question.dart';

void main(){
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _userEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: adminbg,
      appBar: AppBar(
        title: Text("QB App Admin Panel",),backgroundColor: adminbg,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _userEditingController,
                      style: TextStyle(
                        height: 1.2,
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      decoration: kUserInputDecoration,
                      onChanged: (value){
                        print(value);
                      },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    controller: _passwordEditingController,
                    style: TextStyle(
                      height: 1.2,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    decoration: kPasswordInputDecoration,
                    onChanged: (value){
                      print(value);
                    },
                  ),
                ),
              ),
            ),
            MaterialButton(
              elevation: 2,
              color: buttonColor,
              child: Text("Log In",style: TextStyle(color: Colors.white,),),
              onPressed: (){
                if(_userEditingController.text == "4c" && _passwordEditingController.text == "fghFGH123!@#"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()),);
                } else {
                  Fluttertoast.showToast(msg: "Wrong Credentials",);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewScreen extends StatefulWidget {

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: adminbg,
      appBar: AppBar(title: Text(""),backgroundColor: adminbg,),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RepeatedQuestions(),),);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 2,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xFFEB596E),
                      Color(0xFFFFBBCC),
                    ],),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600,),),
                        Text("Repeated Questions",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600,),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TopicWiseQuestions(),),);},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 2,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xFFA239EA),
                      Color(0xFFFF94CC),
                    ],),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600,),),
                        Text("Topic-Wise Questions",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600,),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Dictionary(),),);},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 2,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xFF7868E6),
                      Color(0xFF77ACF1),
                    ],),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600,),),
                        Text("Dictionary Words and Meanings",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600,),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
