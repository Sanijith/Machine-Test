import 'package:flutter/material.dart';
import 'package:machine_test/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*1,
              padding: EdgeInsets.all(50),
              color: Color.fromRGBO(231, 249, 218, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCqhdJXk7mIstxvhNBOrJtw2I02AjdHqzvTusxrI0zhrKdup33lMMDDH-OjN14OiWNx-w&usqp=CAU")),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Item(),
                              ));
                        },
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://as1.ftcdn.net/v2/jpg/04/46/43/98/1000_F_446439828_H1Et5birTiUxn37RQDJDH8mI7eYOdWrM.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Monstera',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Item(),
                              ));
                        },
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1361861209/photo/epipremnum-aureum-plant-in-pot.jpg?s=612x612&w=0&k=20&c=fHe47GgdMOrW2m5qZVLCUPbYXDOK7gKh0bbwxMpSX-M="),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Pothos',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Item(),
                              ));
                        },
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1360366256/photo/parlour-palm-chamaedorea-elegans-in-pot-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=_cpBBK9-s0GjhQULyvXoOlxQ8yU2_KqcVIFNX7AY-zY=")),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Parlor Palm',
                                  style: TextStyle(
                                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Item(),
                              ));
                        },
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/666702562/photo/aloe-vera.jpg?s=612x612&w=0&k=20&c=yFyb8J3mlK_HCEJDUJa3uWzS49niI0WRoSBnCX7XUlk=")),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Aloe', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
