

import 'package:flutter/material.dart';

import 'childques.dart';
import 'constants/lists.dart';

class QuestionaireScreen extends StatefulWidget {
  const QuestionaireScreen({Key? key}) : super(key: key);

  @override
  State<QuestionaireScreen> createState() => _QuestionaireScreenState();
}

class _QuestionaireScreenState extends State<QuestionaireScreen> {
  TextEditingController dateInput = TextEditingController();
  TextEditingController schoolNameController =
  TextEditingController(text: "Enter school name");
  TextEditingController heightController =
  TextEditingController(text: "Enter height");
  TextEditingController weightController =
  TextEditingController(text: "Enter weight");
  TextEditingController dietController =
  TextEditingController(text: "Enter dietary preferences");

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  _appbar() {
    return PreferredSize(
        child: Container(
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
              ),
              gradient: LinearGradient(
                begin: Alignment(-0.2, 0.7),
                end: Alignment(0.95, 1.3),
                colors: [Color(0xFFA31ACB), Color(0x80F5EA5A)],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 60, 0, 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(children: [
                        Text(
                          "Hi \nParents!",
                          style: TextStyle(
                              fontSize: 25,
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
                    'assets/images/parentquestion.png',
                    width: 180,
                    height: 140,
                  ),
                ],
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(220));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA31ACB),
      appBar: _appbar(),
      body: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
        ),
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 6.0,
                      color: Colors.purple,
                      offset: Offset(
                        0,
                        5,
                      ),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 50, 45, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              ">>>",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: gender.length,
                          itemBuilder: (context, int index) {
                            return ListTile(
                                title: Text(
                                  gender[index][1],
                                  style: TextStyle(color: Colors.purple),
                                ),
                                leading: Checkbox(
                                    value: gender[index][0],
                                    onChanged: ((value) {
                                      setState(() {
                                        if (value == false) {
                                          gender[index][0] = value;
                                        } else
                                          gender[index][0] = value;
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
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text(
                        "Enriching Childhood, Empowering Futures",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
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
                        "How old is your child ?",
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
                          itemCount: age.length,
                          itemBuilder: (context, int index) {
                            return ListTile(
                                title: Text(
                                  age[index][1],
                                  style: TextStyle(color: Colors.purple),
                                ),
                                leading: Checkbox(
                                    value: age[index][0],
                                    onChanged: ((value) {
                                      setState(() {
                                        if (value == false) {
                                          age[index][0] = value;
                                        } else
                                          age[index][0] = value;
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
                        "Building Brighter Tomorrows, Today",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
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
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 6.0,
                      color: Colors.purple,
                      offset: Offset(
                        0,
                        5,
                      ),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 50, 45, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "School Name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              ">>>",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: TextFormField(
                        controller: schoolNameController,
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Nurturing Virtually, Inspiring Endlessly",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
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
                        "What are your Child's main interests or hobbies ?",
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
                          itemCount: hobbies.length,
                          itemBuilder: (context, int index) {
                            return ListTile(
                                title: Text(
                                  hobbies[index][1],
                                  style: TextStyle(color: Colors.purple),
                                ),
                                leading: Checkbox(
                                    value: hobbies[index][0],
                                    onChanged: ((value) {
                                      setState(() {
                                        if (value == false) {
                                          hobbies[index][0] = value;
                                        } else
                                          hobbies[index][0] = value;
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
                        "Virtual Care, Real Happiness",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
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
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 6.0,
                      color: Colors.purple,
                      offset: Offset(
                        0,
                        5,
                      ),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30.0, 10),
                      child: Text(
                        "Please provide any specific details about your child's height, weight, or dietary preferences:",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextFormField(
                        controller: heightController,
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextFormField(
                        controller: weightController,
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextFormField(
                        controller: dietController,
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Guardians of Growth, Joy, and Learning",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Text(
                      'Please provide the device to your child and make him/her answer the following questions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChildQues()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple, // Background color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          '           Next ->          ',
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}