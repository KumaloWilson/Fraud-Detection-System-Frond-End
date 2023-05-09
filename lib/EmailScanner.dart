import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


bool fraud = false;

class EmailScanner extends StatefulWidget {
  const EmailScanner({super.key});

  @override
  State<EmailScanner> createState() => _EmailScannerState();
}

class _EmailScannerState extends State<EmailScanner> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailsender = TextEditingController();
  final TextEditingController _emailbody = TextEditingController();

  Future fraudvalidator() async {
    print("okY");
    String url = "http://10.205.5.17:8080/createemail";
    var res = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'emailbody': _emailbody.text.toString(),
        }));

    if (res.body.isNotEmpty) {
      print(res.body);
    } else {
      print("failed to save email");
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Email Validation Failed")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Container(
        width: width,
        height: height * 0.9,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: Text(
                    "Add Email to be searched",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: width * 0.95,
                height: height * 0.5,
                decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.1),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5))),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: width * 0.9,
                      child: TextFormField(
                        //controller: _emailbody,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter Email";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Email Sender',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: width * 0.9,
                      child: TextFormField(
                        maxLines: null,
                        controller: _emailsender,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter Email";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Email Body',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            fraudvalidator();
                          }
                        },
                        child: Text("Verify"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            minimumSize: const Size(150, 50)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        child: Text("Add Email"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            minimumSize: const Size(150, 50)),
                      ),
                    )
                  ],
                ),
              ),
              fraud
                  ? Container(
                      width: width * 0.9,
                      height: height * 0.1,
                      color: Colors.red,
                      child: Center(child: Text("EMAIL IS FRADULANT")),
                    )
                  : Container(
                      width: width * 0.9,
                      height: height * 0.1,
                      color: Colors.green,
                      child: Center(child: Text("EMAIL IS NOT FRADULANT")),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
