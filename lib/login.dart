import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/bottom.dart';
import 'package:machine_test/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(231, 249, 218, 1),
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height*1,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 600,
                      child: Container(
                        height: MediaQuery.of(context).size.height*1,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1248543652/vector/dreamy-smooth-abstract-green-background.jpg?s=612x612&w=0&k=20&c=ZOnZHfWOJryY4sGeliLbQeueF77svXg7iZjmE__GIoM="),
                                fit: BoxFit.fill)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCqhdJXk7mIstxvhNBOrJtw2I02AjdHqzvTusxrI0zhrKdup33lMMDDH-OjN14OiWNx-w&usqp=CAU"))
                          ],
                        ),
                      )),
                  Positioned(
                    top: 220,
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height*1,
                      color: Color.fromRGBO(231, 249, 218, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome To GreenHub",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Login",
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
                                    Text("Email"),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color.fromRGBO(231, 249, 218, 1),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.email_outlined),
                                        hintText: "Enter Your Email Id",
                                      ),
                                    ),
                                    Text("Password"),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        fillColor: Color.fromRGBO(231, 249, 218, 1),
                                        filled: true,
                                        border: InputBorder.none,
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
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Create New Account?"),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Register()),
                                              );
                                            },
                                            child: Text(
                                              "SignUp",
                                              style: TextStyle(
                                                  color:
                                                      Color.fromRGBO(20, 0, 255, 1)),
                                            ),
                                          ),
                                        ],
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
            ),
          )),
    );
  }
}
