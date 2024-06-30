import 'package:flutter/material.dart';
import 'package:machine_test/home_page.dart';
import 'package:machine_test/login.dart';

import 'bottom.dart';

class AddPlant extends StatefulWidget {
  const AddPlant({super.key});

  @override
  State<AddPlant> createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(231, 249, 218, 1),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 150),
                  child: Container(
                    color: Color.fromRGBO(231, 249, 218, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCqhdJXk7mIstxvhNBOrJtw2I02AjdHqzvTusxrI0zhrKdup33lMMDDH-OjN14OiWNx-w&usqp=CAU")),
                        Text(
                          "Add Plant",
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
                                        filled: true,
                                        fillColor: Color.fromRGBO(231, 249, 218, 1),
                                        border: InputBorder.none,
                                        hintText: "Plant Name"),
                                  ),
                                  Text("About"),
                                  TextFormField(
                                    maxLines: 4,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color.fromRGBO(231, 249, 218, 1),
                                      border: InputBorder.none,
                                      hintText: "About",
                                    ),
                                  ),
                                  Text("Image"),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color.fromRGBO(231, 249, 218, 1),
                                      border: InputBorder.none,
                                      hintText: "Upload Image",
                                    ),
                                  ),
                                  SizedBox(height: 30),
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
                                              'Add',
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
          )),
    );
  }
}
