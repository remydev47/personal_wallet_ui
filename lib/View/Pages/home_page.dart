import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: myHeight,
            width: myWidth,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: myHeight * 0.03,
                    left: myWidth * 0.08,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'Welcome to KaziPay!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: myHeight * 0.01,
                    left: myWidth * 0.08,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'Manage your Banking card with KaziPay!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: myHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: myWidth * 0.08,
                  ),
                  child: Container(
                    height: myHeight * 0.2,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff7847fc),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/1.png',
                              height: myHeight * 0.04,
                              color: Colors.white,
                            ),
                            Container()
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
