import 'package:flutter/material.dart';
import 'package:video/select_year.dart';
class Select_sub extends StatefulWidget {
  const Select_sub({Key? key}) : super(key: key);

  @override
  State<Select_sub> createState() => _Select_subState();
}

class _Select_subState extends State<Select_sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Choose the Subject",
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_year()
                                  ));
                                },
                                child: Text(
                                  "GK",
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_year()
                                            ));
                                          },
                                          child: Text(
                                            "GEOGRAGHY",
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
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_year()
                                                      ));
                                                    },
                                                    child: Text(
                                                      "SOCIAL STUDIES",
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
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_year()
                                                            ));
                                                          },
                                                          child: Text(
                                                            "MATHAMATICS",
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
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_year()
                                                                  ));
                                                                },
                                                                child: Text(
                                                                  "PHYSICS",
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
                ]
            )
        )
    );
  }
}
