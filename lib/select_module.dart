import 'package:flutter/material.dart';
import 'package:video/select_year.dart';

import 'Video&quest.dart';
class Select_module extends StatefulWidget {
  const Select_module({Key? key}) : super(key: key);

  @override
  State<Select_module> createState() => _Select_moduleState();
}

class _Select_moduleState extends State<Select_module> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_year()));
            },
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Choose the Module",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center( // Center the buttons
                      child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 300,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VidesQust()));
                                },
                                child: Text(
                                  "Module 1",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15), // Add spacing between buttons
                            SizedBox(
                              height: 50,
                              width: 300,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VidesQust()));
                                },
                                child: Text(
                                  "Module 2",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Center( // Center the buttons
                                child: Column(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: 300,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>VidesQust()));
                                          },
                                          child: Text(
                                            "Module 3",
                                            style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Center( // Center the buttons
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 50,
                                              width: 300,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VidesQust()));
                                                },
                                                child: Text(
                                                  "Module 4",
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Center( // Center the buttons
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 50,
                                                    width: 300,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        primary: Colors.grey,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VidesQust()));
                                                      },
                                                      child: Text(
                                                        "Module 5",
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]
                                )
                            )
                          ]
                      )
                  )
                ]
            )
        )
    );
  }
}
