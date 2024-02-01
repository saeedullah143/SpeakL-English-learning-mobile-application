import 'package:bubble/bubble.dart';
import 'package:dialogflow_flutter/dialogflowFlutter.dart';
import 'package:dialogflow_flutter/googleAuth.dart';
import 'package:dialogflow_flutter/language.dart';
import 'package:flutter/material.dart';

class ChatBotScreen extends StatefulWidget {
  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final messageInsert = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  bool isProcessingResponse = false;

  void response(query) async {
    setState(() {
      isProcessingResponse = true;
    });

    try {
      AuthGoogle authGoogle =
      await AuthGoogle(fileJson: "assets/credentials.json").build();
      DialogFlow dialogflow =
      DialogFlow(authGoogle: authGoogle, language: Language.english);
      AIResponse aiResponse = await dialogflow.detectIntent(query);

      setState(() {
        messages.insert(0, {
          "data": 0,
          "message":
          aiResponse.getListMessage()?[0]["text"]["text"][0].toString(),
        });
        isProcessingResponse = false;
      });
    } catch (e) {
      // Handle network errors
      setState(() {
        messages.insert(0, {
          "data": 0,
          "message": "Network Failed", // Display network error message
        });
        isProcessingResponse = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[Colors.indigo, Colors.teal])),
            ),
          ),
        title: Text("SpeakLE-AI"),),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) => chat(
                messages[index]["message"].toString(),
                messages[index]["data"],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 4.0, left: 12, right: 12.0, bottom: 10.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 15,
                              offset: Offset(0, 10))
                        ]),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      controller: messageInsert,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black, style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        hintText: "Send your message",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                        suffixIcon: Container(
                          margin: EdgeInsets.symmetric(horizontal: 1.0),
                          child: isProcessingResponse
                              ? ThreeDotsLoading()
                              : IconButton(
                            icon: Icon(
                              Icons.send,
                              size: 30.0,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              final message = messageInsert.text.trim();
                              if (message.isNotEmpty) {
                                setState(() {
                                  messages.insert(
                                      0, {"data": 1, "message": message});
                                  response(message);
                                  messageInsert.clear();
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget chat(String message, int data) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Bubble(
        radius: Radius.circular(30.0),
        color: data == 0 ? Colors.blueGrey : Colors.black,
        elevation: 7.0,
        alignment: data == 0 ? Alignment.topLeft : Alignment.topRight,
        nip: data == 0 ? BubbleNip.leftBottom : BubbleNip.rightTop,
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(data == 0 ? "assets/bot.jpg" : "assets/user.jpg"),backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Flexible(
                child: Text(
                  message,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ThreeDotsLoading extends StatefulWidget {
  @override
  _ThreeDotsLoadingState createState() => _ThreeDotsLoadingState();
}

class _ThreeDotsLoadingState extends State<ThreeDotsLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000), // Adjust the duration as needed
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FadeTransition(
          opacity: _controller,
          child: Text(
            ".",
            style: TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        FadeTransition(
          opacity: _controller.drive(Tween(begin: 0.0, end: 1.0)),
          child: Text(
            ".",
            style: TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        FadeTransition(
          opacity: _controller.drive(Tween(begin: 0.0, end: 1.0)),
          child: Text(
            ".",
            style: TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}