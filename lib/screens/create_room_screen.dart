import 'package:flutter/material.dart';
import 'package:tic_tac_toe/resources/socket_methods.dart';
import 'package:tic_tac_toe/utils/colors.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create_room';
  CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _controller = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _socketMethods.createRoomSuccessListener(context);
  }
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
                                "Create",
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
                          top: 130,
                          left: MediaQuery.of(context).size.width / 4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0.0),
                              elevation: 12,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            onPressed: () async{
                              _socketMethods.createRoom(_controller.text);
                            },
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
                                  'Create',
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
