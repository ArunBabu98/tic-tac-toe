import 'package:flutter/material.dart';

import '../utils/colors.dart';
class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join_room';
  JoinRoomScreen({Key? key}) : super(key: key);

  @override

  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}


class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    left: 80,
                    child: Image.asset(
                      "assets/images/x.png",
                      scale: 1.8,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 10,
                    child: Container(
                        height: 150,
                        width: 250,
                        child: Column(
                          children: const [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Join",
                                style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Divider(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Room",
                                style: TextStyle(
                                  fontSize: 65,
                                ),
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              // color: Colors.greenAccent,
              child: Stack(
                children: [
                  Positioned(
                    child: Stack(
                      children: [
                        Positioned(
                          right: 80,
                          child: Image.asset(
                            "assets/images/o.png",
                            scale: 2,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          right: 20,
                          child: Container(
                            color: Colors.black.withOpacity(0.7),
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 20,
                                color: bgColor,
                              ),
                              controller: _controller,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your nickname',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: bgColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                         Positioned(
                          top: 100,
                          left: 20,
                          right: 20,
                          child: Container(
                            color: Colors.black.withOpacity(0.7),
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 20,
                                color: bgColor,
                              ),
                              controller: _controller,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Game ID',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: bgColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200,
                          left: MediaQuery.of(context).size.width / 4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0.0),
                              elevation: 12,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            onPressed: () {},
                            child: Ink(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                width: 200,
                                height: 50,
                                constraints:
                                    const BoxConstraints(minWidth: 88.0),
                                child: Center(
                                    child: const Text(
                                  'Join',
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontSize: 18, color: textColor),
                                )),
                              ),
                            ),
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
      ),
    );
  }
}