import 'dart:math';

import 'package:flutter/material.dart';
import 'package:training_zendvn/consts/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _colorContainer = Colors.amber;

  void changeColor() {
    setState(() {
      _colorContainer = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Training",
              style: dStyleTextMain,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Error fugiat ut",
                      style: dStyleTextSecond,
                    ),
                    Row(
                      children: [
                        Text(
                          "Detail",
                          style: dStyleTextSecond.copyWith(color: Colors.amber),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(70)),
                    color: Colors.amber,
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Odio sed magni",
                            style: dStyleTextSecond.copyWith(
                                fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            "Nisi vitae maxime. Et dolorem qui distinctio quam officiis quia.",
                            style: dStyleTextSecond.copyWith(
                                color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "ZendVn",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            ),
                            Container(
                              width: 80,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: InkWell(
                                onTap: () {
                                  changeColor();
                                },
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.amber,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: _colorContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const Text(
                  "Earum architecto et rerum laboriosam",
                  style: dStyleTextSecond,
                ),
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top: 20),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Excepturi facilis et. Molestiae quam nemo quae corporis ",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
