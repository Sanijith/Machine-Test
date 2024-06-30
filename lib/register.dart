import 'package:flutter/material.dart';
import 'package:machine_test/home_page.dart';
import 'package:machine_test/login.dart';

import 'bottom.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 249, 218, 1),
        body: SingleChildScrollView(
          child: Stack(
                children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Container(
              color: Color.fromRGBO(231, 249, 218, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCqhdJXk7mIstxvhNBOrJtw2I02AjdHqzvTusxrI0zhrKdup33lMMDDH-OjN14OiWNx-w&usqp=CAU") ),
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      // Adjust the radius as needed
                      child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name"),
                            TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  prefixIcon: Icon(Icons.person),
                                  hintText: "Enter Your Name"),
                            ),
                            Text("Mobile Number"),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                prefixIcon: Icon(Icons.phone_outlined),
                                hintText: "Enter Your Phone Number",
                              ),
                            ),
                            Text("Email"),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                prefixIcon: Icon(Icons.email_outlined),
                                hintText: "Enter Your Email Id",
                              ),
                            ),
                            Text("Password"),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                prefixIcon: Icon(Icons.lock_outlined),
                                hintText: "Enter Your Password",
                              ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bottom()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    height: 40,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(146, 215, 34, 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                },
                                child: Text(
                                  "Back To Login",
                                  style: TextStyle(
                                      color: Color.fromRGBO(20, 0, 255, 1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
                ],
              ),
        ));
  }
}
