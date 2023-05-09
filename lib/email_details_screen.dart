/*import 'package:flutter/material.dart';

import 'package:stewardsystem/constants.dart';

import 'emails.dart';

class MovieDetailsScreen extends StatelessWidget {
  //final Email email;
// 
  const MovieDetailsScreen(this.email, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6F35A5),
        title: Text(email.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 40, 0, 0),
                width: width,
                height: 50,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                            child: Text(
                          "e",
                          style: TextStyle(color: Colors.white),
                        ))),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: width,
                child: Text(
                  "Message  :" + email.title,
                  style: TextStyle(
                      color: Colors.brown.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                width: width,
                color: Colors.grey.withOpacity(0.3),
                child: Center(
                  child: Text(
                    email.description,
                    style: TextStyle(
                        fontSize: 20, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: width,
                color: Colors.grey.withOpacity(0.3),
                child: Center(
                  child: Text(
                    "This is your email that was sen't to your account by a certain sender",
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: width,
                color: Colors.grey.withOpacity(0.3),
                child: Text(
                  "Sender : @myemail.com",
                  style: TextStyle(
                      fontSize: 15, color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: width,
                color: email.fraud != false
                    ? Colors.red
                    : Colors.green.withOpacity(0.8),
                child: Center(
                  child: email.fraud != false
                      ? Text(
                          "Compromised Email",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      : Text(
                          "Safe Email",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
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
*/