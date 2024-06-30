import 'package:flutter/material.dart';
import 'package:machine_test/bottom.dart';
import 'package:machine_test/home_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
            color: Color.fromRGBO(231, 249, 218, 1),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                SizedBox(height: 20,),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://as1.ftcdn.net/v2/jpg/04/46/43/98/1000_F_446439828_H1Et5birTiUxn37RQDJDH8mI7eYOdWrM.jpg"),
                          ),
                          title: Text("Monstera"),
                          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline)),
                        ),
                      );
                    },
                  ),
                ),
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
                    SizedBox(width: 30,),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Bottom(),));
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
                                child: Text('Home',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )),
                        )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
