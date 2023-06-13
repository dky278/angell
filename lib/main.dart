import 'package:flutter/material.dart';
import 'ParentQuestion.dart';
import 'accountpage.dart';
import 'constants/lists.dart';
import 'redeempage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: QuestionaireScreen(),
    );
  }
}



class ChildQues extends StatefulWidget {
  const ChildQues({Key? key}) : super(key: key);

  @override
  State<ChildQues> createState() => _ChildQuesState();
}

class _ChildQuesState extends State<ChildQues> {
  TextEditingController foodlNameController =
      TextEditingController(text: "Enter foods name");

  _appbar() {
    return PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
            gradient: LinearGradient(
              begin: Alignment(-0.2, 0.7),
              end: Alignment(0.95, 1.3),
              colors: [Color(0xFFA31ACB), Color(0x80F5EA5A)],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 60, 0, 40),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                      Text(
                        "Hey, \nBuddy!!",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ]),
                  ),
                ),
                Image.asset(
                  'assets/images/childquestion.png',
                  width: 180,
                  height: 140,
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(250));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _appbar(),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(40),
            child: Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 6.0,
                  color: Colors.purple,
                  offset: Offset(
                    0,
                    5,
                  ),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30.0, 10),
                    child: Text(
                      "What activities do you enjoy the most ?",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: activities.length,
                        itemBuilder: (context, int index) {
                          return ListTile(
                              title: Text(
                                activities[index][1],
                                style: TextStyle(color: Colors.purple),
                              ),
                              leading: Checkbox(
                                  value: activities[index][0],
                                  onChanged: ((value) {
                                    setState(() {
                                      if (value == false) {
                                        activities[index][0] = value;
                                      } else
                                        activities[index][0] = value;
                                    });
                                  }),
                                  fillColor: MaterialStateProperty.resolveWith(
                                      (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return Colors.purple.withOpacity(.32);
                                    }
                                    return Colors.purple;
                                  })));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Unlocking Potential, Spreading Smiles",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 6.0,
                  color: Colors.purple,
                  offset: Offset(
                    0,
                    5,
                  ),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30.0, 10),
                    child: Text(
                      "Is there anything specific that you would like to learn or explore ?",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: explore.length,
                        itemBuilder: (context, int index) {
                          return ListTile(
                              title: Text(
                                explore[index][1],
                                style: TextStyle(color: Colors.purple),
                              ),
                              leading: Checkbox(
                                  value: explore[index][0],
                                  onChanged: ((value) {
                                    setState(() {
                                      if (value == false) {
                                        explore[index][0] = value;
                                      } else
                                        explore[index][0] = value;
                                    });
                                  }),
                                  fillColor: MaterialStateProperty.resolveWith(
                                      (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return Colors.purple.withOpacity(.32);
                                    }
                                    return Colors.purple;
                                  })));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Cultivating Well-being, One Angel at a Time",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 6.0,
                  color: Colors.purple,
                  offset: Offset(
                    0,
                    5,
                  ),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30.0, 10),
                    child: Text(
                      "What are your favourite subjects in school ?",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: subjects.length,
                        itemBuilder: (context, int index) {
                          return ListTile(
                              title: Text(
                                subjects[index][1],
                                style: TextStyle(color: Colors.purple),
                              ),
                              leading: Checkbox(
                                  value: subjects[index][0],
                                  onChanged: ((value) {
                                    setState(() {
                                      if (value == false) {
                                        subjects[index][0] = value;
                                      } else
                                        subjects[index][0] = value;
                                    });
                                  }),
                                  fillColor: MaterialStateProperty.resolveWith(
                                      (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return Colors.purple.withOpacity(.32);
                                    }
                                    return Colors.purple;
                                  })));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Your Child's Joy, Our Angelic Mission",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 6.0,
                  color: Colors.purple,
                  offset: Offset(
                    0,
                    5,
                  ),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 40.0, 10),
                    child: Text(
                      "What are your favourite foods ?",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: TextFormField(
                      controller: foodlNameController,
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Guiding with Love, Uplifting with Care",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 20, 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    'Are you sure you want to lock the filled data ?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RedeemPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple, // Background color
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              ' Refill  ',
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.purple, // Background color
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              '  Lock  ',
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ), //hobbies
        ],
      ),
    );
  }
}
