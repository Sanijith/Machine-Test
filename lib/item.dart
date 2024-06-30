import 'package:flutter/material.dart';
import 'package:machine_test/cart.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromRGBO(231, 249, 218, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(image: NetworkImage("https://as1.ftcdn.net/v2/jpg/04/46/43/98/1000_F_446439828_H1Et5birTiUxn37RQDJDH8mI7eYOdWrM.jpg"),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text("Monstera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..",style: TextStyle(fontSize: 20),),
                SizedBox(height: 20,),
                Text("View More"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1361861209/photo/epipremnum-aureum-plant-in-pot.jpg?s=612x612&w=0&k=20&c=fHe47GgdMOrW2m5qZVLCUPbYXDOK7gKh0bbwxMpSX-M="),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Pothos',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/666702562/photo/aloe-vera.jpg?s=612x612&w=0&k=20&c=yFyb8J3mlK_HCEJDUJa3uWzS49niI0WRoSBnCX7XUlk=")),borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Aloe',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                              height: 53,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(146, 215, 34, 1)),
                              child: Center(
                                child: Text('Buy',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )),
                        )),
                    SizedBox(width: 20,),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                              height: 53,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(146, 215, 34, 1)),
                              child: Center(
                                child: Text('Cart',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
