// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 340, child: _head(),),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction History',
                      style: TextStyle(
                        fontWeight: FontWeight.w600, 
                        fontSize: 19,
                        color: Colors.black
                        )
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.w600, 
                        fontSize: 19,
                        color: Colors.grey
                        )
                    ),
                  ],
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    // child: Image.asset('images/Transfer.png'),
                  ),
                  title: Text(
                    'transfer'
                  ),
                );
            }))
          ],
          )
      ),
    );
  }

  Widget _head(){
    return Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  color: Color(0xff368983),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                    )
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 35,
                      left: 340,
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        height: 40, 
                        width: 40, 
                        color: Color.fromRGBO(250, 250, 250, 0.1),
                        child: Icon(Icons.notification_add_outlined, size: 30, color:Colors.white),
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good afternoon', 
                          style: TextStyle(
                            fontWeight: FontWeight.w500, 
                            fontSize: 16,
                            color: Color.fromARGB(255, 224, 223, 223)
                            ),
                          ),
                          Text('Agung Agung', 
                          style: TextStyle(
                            fontWeight: FontWeight.w500, 
                            fontSize: 20,
                            color: Color.fromARGB(255, 224, 223, 223)
                            ),
                          ),
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 140,
            left: 37,
            child: Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(47, 125, 1221, 0.3),
                    offset: Offset(0,6),
                    blurRadius: 12,
                    spreadRadius: 6,
                  )
                ],
                color: Color.fromARGB(255, 47, 125, 121),
                borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Balance',
                        style: TextStyle(
                          fontWeight: FontWeight.w500, 
                          fontSize: 16,
                          color: Color.fromARGB(255, 224, 223, 223)
                          ),
                        ),
                        Icon(
                          Icons.more_horiz, 
                          color: Colors.white,)
                      ],
                      ),
                  ),
                  SizedBox(height: 7),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text('\$ 2,450', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 25,
                          color: Color.fromARGB(255, 224, 223, 223)
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: Color.fromARGB(255, 855, 145, 141),
                              child: Icon(
                                Icons.arrow_downward, 
                                color: Colors.white, 
                                size: 19
                                ),
                              ),
                              SizedBox(width: 7),
                              Text(
                                'Income', 
                                style: TextStyle(
                                fontWeight: FontWeight.w500, 
                                fontSize: 16,
                                color: Color.fromARGB(255, 224, 223, 223)
                                )
                              ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: Color.fromARGB(255, 855, 145, 141),
                              child: Icon(
                                Icons.arrow_upward, 
                                color: Colors.white, 
                                size: 19
                                ),
                              ),
                              SizedBox(width: 7),
                              Text(
                                'Expenses', 
                                style: TextStyle(
                                fontWeight: FontWeight.w500, 
                                fontSize: 16,
                                color: Color.fromARGB(255, 224, 223, 223)
                                )
                              ),
                          ],
                        )
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ 1,450',
                            style: TextStyle(
                              fontWeight: FontWeight.w600, 
                              fontSize: 16,
                              color: Color.fromARGB(255, 224, 223, 223)
                              )
                          ),
                          Text(
                            '\$ 450',
                            style: TextStyle(
                              fontWeight: FontWeight.w600, 
                              fontSize: 16,
                              color: Color.fromARGB(255, 224, 223, 223)
                              )
                          ),
                        ],),
                    )
                  ],)
              ),
            )
          ],
        );
  }
}